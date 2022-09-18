'use strict';

/**
 * Auth.js controller
 *
 * @description: A set of functions called "actions" for managing `Auth`.
 */

/* eslint-disable no-useless-escape */
const crypto = require('crypto');
const _ = require('lodash');
const utils = require('@strapi/utils');
const getService = require('@strapi/utils');

const accountSid = process.env.TWILIO_ACCOUNT_SID;
const authToken = process.env.TWILIO_AUTH_TOKEN;
const client = require('twilio')(accountSid, authToken);

const { getAbsoluteAdminUrl, getAbsoluteServerUrl, sanitize } = utils;
const { ApplicationError, ValidationError } = utils.errors;

const sanitizeUser = (user, ctx) => {
    const { auth } = ctx.state;
    const userSchema = strapi.getModel('plugin::users-permissions.user');

    return sanitize.contentAPI.output(user, userSchema, { auth });
};

module.exports = plugin => {


    plugin.controllers.auth.callback = async (ctx) => {
        

        try{
        const provider = ctx.params.provider || 'twillio';
        const params = ctx.request.body;




        const store = strapi.store({ type: 'plugin', name: 'users-permissions' });
        const grantSettings = await store.get({ key: 'grant' });

        const grantProvider = provider === 'local' ? 'email' : provider;

        if (!_.get(grantSettings, [grantProvider, 'enabled']) && grantProvider !== 'twillio') {
            throw new ApplicationError('This provider is disabled');
        }

        if (provider === 'local') {
            // await validateCallbackBody(params);

            const { identifier } = params;

            // Check if the user exists.
            const user = await strapi.query('plugin::users-permissions.user').findOne({
                where: {
                    provider,
                    $or: [{ email: identifier.toLowerCase() }, { username: identifier }],
                },
            });

            if (!user) {
                throw new ValidationError('Invalid identifier or password');
            }

            if (!user.password) {
                throw new ValidationError('Invalid identifier or password');
            }

            const validPassword = await getService('user').validatePassword(
                params.password,
                user.password
            );

            if (!validPassword) {
                throw new ValidationError('Invalid identifier or password');
            }

            const advancedSettings = await store.get({ key: 'advanced' });
            const requiresConfirmation = _.get(advancedSettings, 'email_confirmation');

            if (requiresConfirmation && user.confirmed !== true) {
                throw new ApplicationError('Your account email is not confirmed');
            }

            if (user.blocked === true) {
                throw new ApplicationError('Your account has been blocked by an administrator');
            }

            return ctx.send({
                jwt: getService('jwt').issue({ id: user.id }),
                user: await sanitizeUser(user, ctx),
            });
        } else if (provider === 'twillio') {

            console.log(' iwth twillio');

            const { phoneNumber, slip, code } = params ?? { slip: '', phoneNumber: '', code: '' };

            if (slip === '' || slip === undefined) {
                console.log(' iwth twillio no slip');

                // 03009550284
                if (phoneNumber.length < 11) {
                    throw new ApplicationError('Invalid phone number');
                }




                // create tempphone record with phoneNumber and a random code

                let servicId;
                let tPhone = phoneNumber;
                // remove 0 from the start of the phone number if it exists
                if (phoneNumber[0] === '0') {
                    tPhone = phoneNumber.slice(1);
                }

                console.log('+92' + tPhone);

                let service = await client.verify.v2.services
                    .create({ friendlyName: 'Estamart' });

                servicId = service.sid;
                await client.verify.v2.services(service.sid)
                    .verifications
                    .create({ to: '+92' + tPhone, channel: 'sms' })
                    .then(verification => console.log(verification.status));

                const tempPhone = await strapi.entityService.create('api::tempphone.tempphone', {
                    data: {
                        phoneNumber: phoneNumber,
                        slip: servicId,
                        sid: servicId,
                        timpestamp: Date.now(),
                    }
                });

                return ctx.send({
                    slip: tempPhone.id
                });

            } else {




                console.log('step 1')

                console.log(slip)
                let tempPhone = await strapi.entityService.findOne('api::tempphone.tempphone', slip);
                console.log('step 2')

                if (tempPhone === null) {
                    throw new ApplicationError('Invalid slip');
                }
                console.log('step 3')

                let tPhone = tempPhone.phoneNumber;
                // remove 0 from the start of the phone number if it exists
                if (tempPhone.phoneNumber[0] === '0') {
                    tPhone = tempPhone.phoneNumber.slice(1);
                }

                let verification = await client.verify.v2.services(tempPhone.sid)
                    .verificationChecks
                    .create({ to: '+92' + tPhone, code: code });

                console.log(verification.status);

                if (verification.status === 'approved') {



                    // Check if the user exists.
                    const user = await strapi.query('plugin::users-permissions.user').findOne({
                        where: {
                            provider: 'twillio',
                            phoneNumber: tempPhone.phoneNumber,
                        },
                    });

                    if (!user) {

                        const pluginStore = await strapi.store({ type: 'plugin', name: 'users-permissions' });
                        const settings = await pluginStore.get({ key: 'advanced' });

                        if (!settings.allow_register) {
                            throw new ApplicationError('Register action is currently disabled');
                        }


                        const role = await strapi
                            .query('plugin::users-permissions.role')
                            .findOne({ where: { type: settings.default_role } });

                        if (!role) {
                            throw new ApplicationError('Impossible to find the default role');
                        }

                        const newUser = {
                            role: role.id,
                            email: 'user.' + phoneNumber + '@fictiondevelopers.com',
                            phoneNumber,
                            provider: 'twillio',
                            password: crypto.randomFillSync(Buffer.alloc(20)).toString('hex'),
                            username: phoneNumber,
                            confirmed: true,
                        };

                        const user = await getService('user').add(newUser);




                        return ctx.send({
                            jwt: getService('jwt').issue({ id: user.id }),
                            user: await sanitizeUser(user, ctx),
                        });
                    } else {



                        return ctx.send({
                            jwt: getService('jwt').issue({ id: user.id }),
                            user: await sanitizeUser(user, ctx),
                        });
                    }
                } else {

                    throw new ApplicationError('Invalid code');
                }

            }

            
        }

        throw new ApplicationError('This provider is not supported')
    }catch (error) {
        console.log(error);
        console.log('my bad')
        throw new ApplicationError(error.message);
    }   
    }


    return plugin;
}