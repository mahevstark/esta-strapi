'use strict';

/**
 * guest controller
 */

const { createCoreController } = require('@strapi/strapi').factories;

module.exports = createCoreController('api::guest.guest' , ({strapi})=>({

    async create(ctx){

        // check if guest already exists using device_id

        let device_id = ctx.request.body.data.device_id;
        let guest = await strapi.query('api::guest.guest').findOne({where:{device_id}});

        if(guest){
            console.log('guest already exists');

            // update guest


            let gg = await strapi.query('api::guest.guest').update(
                {
                    where:{device_id},
                    data:ctx.request.body.data
                }
            );

            return gg;
        }


        let data = await strapi.query('api::guest.guest').create(ctx.request.body);
        return data;
    }
}));
