'use strict';

/**
 * transaction controller
 */

const { createCoreController } = require('@strapi/strapi').factories;

module.exports = createCoreController('api::transaction.transaction', ({strapi})=>({

    async status(ctx) {
        console.log(ctx.request);

        console.log(ctx.request.body);
        return ctx.send({status:200});
    }, 

    async notif(ctx) {

        console.log(ctx.request);
        console.log(ctx.request.body);

        return ctx.send({status:200});
    }, 
}));
