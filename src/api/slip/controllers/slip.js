'use strict';

/**
 * slip controller
 */

const { createCoreController } = require('@strapi/strapi').factories;

module.exports = createCoreController('api::slip.slip', ({ strapi }) => ({

    async create(ctx) {

        const { id } = ctx.state.user;

        const { total } = ctx.request.body;

        const slip = await strapi.db.query('api::slip.slip').create({
            amount:total,
            users_permissions_user:id,
            status:'pending',
            paid:false,
            payment_method:'card',
        });

        return slip;
    },

    async payment_success(ctx) {

        const { id } = ctx.state.user;

        const { total } = ctx.request.body;

        const slip = await strapi.db.query('api::slip.slip').create({
            amount:total,
            users_permissions_user:id,
            status:'pending',
            paid:false,
            payment_method:'card',
        });

        return slip;
    },
}));
