'use strict';

/**
 * address controller
 */

const { createCoreController } = require('@strapi/strapi').factories;

module.exports = createCoreController('api::address.address', ({strapi}) => ({


    async createme(ctx) {
        const { id } = ctx.state.user;

        const { house, block, near, rtl, is_default } = ctx.request.body;
        // make all other addresses not default
        // find all addresses of this user
        let addresses = await strapi.db.query('api::address.address').findMany({
            where: {
                users_permissions_user: id
            }
        });
        if(addresses && addresses.length > 0) {
            let list = [];
            addresses.map(async (address)=>{
                if(address.default){
                    list.push(address.id);
                }
            });

            if(list.length > 0){
                const x = await strapi.db.query('api::address.address').updateMany({
                    where: {
                        id: {
                            $in: list
                        }
                    },
                    data: {
                        default: false
                    }
                });
            }
        }
        const address = await strapi.service('api::address.address').create({data:{
            house,
            block,
            near,
            rtl,
            users_permissions_user: id,
            default: true
        }});
        return address;
    },

    async putmine(ctx) {
        const { id:userId } = ctx.state.user;
        const { id } = ctx.params;

        const { house, block, near, rtl, is_default } = ctx.request.body;

        const isMine = await strapi.query('api::address.address').findOne({id, users_permissions_user: userId});

        if(!isMine) {
            return ctx.unauthorized(`You are not authorized to update this address`);
        }
        const address = await strapi.entityService.update('api::address.address',id,{data:{
            house,
            block,
            near,
            rtl,
            default: is_default
        }});
        return address;
    },

    async deletemine(ctx) {
        const { id:userId } = ctx.state.user;
        const { id } = ctx.params;

        const isMine = await strapi.query('api::address.address').findOne({id, users_permissions_user: userId});

        if(!isMine) {
            return ctx.unauthorized(`You are not authorized to delete this address`);
        }

        await strapi.entityService.delete('api::address.address',id);
        
        return ctx.send({message: 'Address deleted successfully'});
    },

    async getmine(ctx) {
        const { id } = ctx.state.user;

        const address = await strapi.db.query('api::address.address').findMany({
            where: {
                users_permissions_user: id
            },
            orderBy: {
                id: 'desc'
            }
        });
        return address;
    }


}));
