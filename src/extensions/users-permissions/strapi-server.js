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
const { getService } = require('@strapi/plugin-users-permissions/server/utils');
const {
    validateCallbackBody,
} = require('@strapi/plugin-users-permissions/server/controllers/validation/auth');
const {
    validateUpdateUserBody,
} = require('@strapi/plugin-users-permissions/server/controllers/validation/user');

const accountSid = process.env.TWILIO_ACCOUNT_SID;
const authToken = process.env.TWILIO_AUTH_TOKEN;
const client = require('twilio')(accountSid, authToken);

const { getAbsoluteAdminUrl, getAbsoluteServerUrl, sanitize, NotFoundError } = utils;
const { ApplicationError, ValidationError } = utils.errors;

const sanitizeUser = (user, ctx) => {
    const { auth } = ctx.state;
    const userSchema = strapi.getModel('plugin::users-permissions.user');

    return sanitize.contentAPI.output(user, userSchema, { auth });
};
const sanitizeOutput = (user, ctx) => {
    const schema = strapi.getModel('plugin::users-permissions.user');
    const { auth } = ctx.state;

    return sanitize.contentAPI.output(user, schema, { auth });
};

module.exports = plugin => {

    let alone = plugin.routes
    alone['content-api'].routes.push({
        method: 'POST',
        path: '/auth/local/twillio',
        handler: 'auth.twillio',
        config: {
            prefix: '',
        },
    });

    alone['content-api'].routes.push({
        method: 'PATCH',
        path: '/users/me3',
        handler: 'user.updateme3',
        config: {
            prefix: '',
        },
    });



    plugin.routes = alone;


    plugin.controllers.user.updateme3 = async (ctx) => {

        const {locale} = ctx.params;
        const isUrdu = locale === 'ur-PK';

        const advancedConfigs = await strapi
            .store({ type: 'plugin', name: 'users-permissions', key: 'advanced' })
            .get();

        const { id } = ctx.state.user;
        const { email, username, password } = ctx.request.body;

        const user = await getService('user').fetch(id);
        if (!user) {
            throw new NotFoundError(`User not found`);
        }

        await validateUpdateUserBody(ctx.request.body);

        if (user.provider === 'local' && _.has(ctx.request.body, 'password') && !password) {
            throw new ValidationError('password.notNull');
        }

        if (_.has(ctx.request.body, 'username')) {
            const userWithSameUsername = await strapi
                .query('plugin::users-permissions.user')
                .findOne({ where: { username } });

            if (userWithSameUsername && userWithSameUsername.id != id) {
                throw new ApplicationError('Username already taken');
            }
        }

        if (_.has(ctx.request.body, 'email') && advancedConfigs.unique_email) {
            const userWithSameEmail = await strapi
                .query('plugin::users-permissions.user')
                .findOne({ where: { email: email.toLowerCase() } });

            if (userWithSameEmail && userWithSameEmail.id != id) {
                throw new ApplicationError('Email already taken');
            }
            ctx.request.body.email = ctx.request.body.email.toLowerCase();
        }

        const updateData = {
            ...ctx.request.body,
        };

        const data = await getService('user').edit(user.id, updateData);
        const sanitizedData = await sanitizeOutput(data, ctx);

        ctx.send(sanitizedData);
    },



        plugin.controllers.auth.twillio = async (ctx) => {



            try {
                const provider = ctx.params.provider || 'twillio';
                const params = ctx.request.body;
                const {locale} = ctx.params;
                const isUrdu = locale === 'ur-PK';




                const store = strapi.store({ type: 'plugin', name: 'users-permissions' });
                const grantSettings = await store.get({ key: 'grant' });

                const grantProvider = provider === 'local' ? 'email' : provider;

                if (!_.get(grantSettings, [grantProvider, 'enabled']) && grantProvider !== 'twillio') {
                    throw new ApplicationError('This provider is disabled');
                }

                if (provider === 'twillio') {

                    console.log(' iwth twillio');

                    const { phoneNumber, slip, code, channel, name } = params ?? { slip: '', phoneNumber: '', code: '', channel:'sms', name:'Esta user' };

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
                            .create({ to: '+92' + tPhone, channel: channel })
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

                            const blocked = !isUrdu ? 'Your account has been blocked by an administrator': 'آپ کا اکاؤنٹ ایڈمنسٹریٹر کی طرف سے بلاک کر دیا گیا ہے';

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
                                    name:name,
                                    complete:true
                                };

                                const user = await getService('user').add(newUser);

                                
                                if (user.blocked === true) {
                                    throw new ApplicationError(blocked);
                                }




                                return ctx.send({
                                    jwt: getService('jwt').issue({ id: user.id }),
                                    user: await sanitizeUser(user, ctx),
                                });
                            } else {


                                if (user.blocked === true) {
                                    throw new ApplicationError(blocked);
                                }

                                return ctx.send({
                                    jwt: getService('jwt').issue({ id: user.id }),
                                    user: await sanitizeUser(user, ctx),
                                });
                            }
                        } else {

                            throw new ApplicationError(!isUrdu?'Invalid code':'غلط کوڈ');
                        }

                    }


                }

                throw new ApplicationError('This provider is not supported')
            } catch (error) {
                console.log(error);
                throw new ApplicationError(error.message);
            }
        }


    return plugin;
}