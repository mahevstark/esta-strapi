'use strict';

/**
 * wallet controller
 */

const { createCoreController } = require('@strapi/strapi').factories;
const { getService } = require('@strapi/plugin-users-permissions/server/utils');

module.exports = createCoreController('api::wallet.wallet', ({ strapi }) => ({
    async mine(ctx) {
        const { id,balance:b } = ctx.state.user;
        const balance = b?parseInt(b):0;

        const wallet_entries = await strapi.db.query('api::wallet.wallet').findMany({
            where: {
                users_permissions_user: id
            },
            orderBy: [{id:'desc'}]
        });

        return {data:wallet_entries, balance};
    },
    async topup(ctx) {
        const { id,balance:b } = ctx.state.user;
        const balance = b?parseInt(b):0;

        

        const amount = parseInt(ctx.request.body.amount) || 0; 
        const sslip = ctx.request.body.slip || null;



        console.log('s_slip',sslip);
        let slip = await strapi.db.query('api::slip.slip').findMany({where:{slip:sslip}, groupBy:['id']});
        slip = slip[0];

        if(!slip){
            return ctx.badRequest('Invalid slip');
        }

        if(slip.status!='paid'){
            return ctx.badRequest('Invalid slip');
        }

        if(amount < 10){
            return ctx.badRequest('Minimum topup amount is 10');
        }

        if(amount > 10000){
            return ctx.badRequest('Maximum topup amount is 10000');
        }

        const walletEntry = {
            before:balance,
            after:(balance+amount),
            reason:"User topup",
            users_permissions_user: id
        }
        const data = await strapi.db.query('api::wallet.wallet').create({data:walletEntry});
        await getService('user').edit(id, {balance:(balance+amount)});

        await strapi.entityService.update('api::slip.slip', slip.id, {data:{wallet:data.id,status:'used'}});

        return {balance:(balance+amount)};
    },
}));
