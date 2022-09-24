'use strict';

/**
 * order-complain controller
 */

const { createCoreController } = require('@strapi/strapi').factories;

module.exports = createCoreController('api::order-complain.order-complain',({strapi})=>({

    async createme(ctx) {
        const { id } = ctx.state.user;
        const {order_id,order_product_id} = ctx.request.body;
        const order = await strapi.db.query('api::order.order').findOne({
            where:{
                id:order_id,
                users_permissions_user: id
            }
        });
        if(!order) {
            return ctx.badRequest('Order not found');
        }

        if(order.status!=='delivered') {
            return ctx.badRequest('This order is not delivered yet');
        }
        // const x = await strapi.entityService.update('api::order.order',order_id, {data: {status:'cancelled_by_user'}});

        const complain = await strapi.service('api::order-complain.order-complain').create({data:{
            order: order_id,
            order_product: order_product_id,
            complain: ctx.request.body.complain,
            status: 'working'
        }});
        return {message:'Complain registered successfully'};
    },

    async mine(ctx) {
        const { id } = ctx.state.user;
        const {order_id} = ctx.query || {order_id:0};


        const order = await strapi.db.query('api::order.order').findOne({
            where:{
                id:order_id,
                users_permissions_user: id
            }
        });
        if(!order) {
            return ctx.badRequest('Order not found');
        }

        const complains = await strapi.db.query('api::order-complain.order-complain').findMany({
            where:{
                order: order_id
            },
            populate: ['complain_comment']
        });
        return complains;
    }
}));
