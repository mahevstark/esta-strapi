'use strict';

/**
 * slip controller
 */

const { createCoreController } = require('@strapi/strapi').factories;
const  { v4:uuidv4 } =  require('uuid');

module.exports = createCoreController('api::slip.slip', ({ strapi }) => ({

    async create(ctx) {

        const { id } = ctx.state.user;

        const { amount:total } = ctx.request.body;

        const slip = await strapi.db.query('api::slip.slip').create({data:{
            amount:total,
            users_permissions_user:id,
            status:'pending',
            paid:false,
            slip:uuidv4(),
            payment_method:'card',
        }});

        return slip;
    },

    async get_details(ctx) {


        const { slip:s } = ctx.request.body;

        const slip = await strapi.db.query('api::slip.slip').findOne({slip:s});


        return slip;
    },

    async payment_success(ctx) {

        const { id } = ctx.state.user;

        const { total } = ctx.request.body;

        // const slip = await strapi.db.query('api::slip.slip').create({data:{
        //     amount:total,
        //     users_permissions_user:id,
        //     status:'pending',
        //     paid:false,
        //     payment_method:'card',
        // }});

        return "#LOL";
    },

    async payment_success_now(ctx) {


        const { slip:s,type,payload } = ctx.request.body;

        const slips = await strapi.db.query('api::slip.slip').findMany({where:{slip:s}});
        if(slips.length == 0) return ctx.badRequest(null,"Slip not found");
        const slip = slips[0];
        
        // if(slip.paid) return ctx.badRequest(null,"Already paid");
        const axios = require('axios');

        var $url = 'https://payments.bankalfalah.com/HS/api/IPN/OrderStatus/21159/027790/'+s;
		
        // fetch the url and get the response

        const confirmResponse = await axios.get($url);

        


        console.log(confirmResponse.data);


        
        if(type == 'success'){

            await strapi.entityService.update('api::slip.slip',slip.id, {data:{
                status:'paid',
                paid:true,
                response_object:JSON.stringify(payload),
                amount_paid:payload.amount
            }});
        }

        if(type == 'failed'){

            await strapi.entityService.update('api::slip.slip',slip.id, {data:{
                status:'failed',
                paid:false,
                response_object:JSON.stringify(payload),
                amount_paid:0
            }});
        }

        
        return {
            type:type,
        };
    },
}));
