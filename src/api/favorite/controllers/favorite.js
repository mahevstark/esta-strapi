'use strict';

/**
 * favorite controller
 */

const { createCoreController } = require('@strapi/strapi').factories;

module.exports = createCoreController('api::favorite.favorite', ({strapi})=>({


    async createme(ctx) {
        const { id } = ctx.state.user;

        const { product_id } = ctx.request.body;
        let added = false;
        let removed = false;

        const exists = await strapi.query('api::favorite.favorite').findOne({product:product_id, users_permissions_user: id});

        if(!exists) {
            
            let favorite = await strapi.service('api::favorite.favorite').create({data:{
                product: product_id,
                users_permissions_user: id,
            }});
            favorite.added = true;
            return favorite;
        }else{
            await strapi.entityService.delete('api::favorite.favorite',exists.id);
            removed = true;
            let favorite = {
                added,
                removed
            }
            return favorite;
        }
    },

    async deletemine(ctx) {
        const { id:userId } = ctx.state.user;
        const { id } = ctx.params;

        const isMine = await strapi.query('api::favorite.favorite').findOne({id, users_permissions_user: userId});

        if(!isMine) {
            return ctx.unauthorized(`You are not authorized to delete this favorite`);
        }

        await strapi.entityService.delete('api::favorite.favorite',id);
        
        return ctx.send({message: 'favorite deleted successfully'});
    },

    async deletemineall(ctx) {
        const { id:userId } = ctx.state.user;


        const data = await strapi.db.query('api::favorite.favorite').findMany({where:{
            users_permissions_user:userId
        }});
        
        // Delete all entries fetched.
        data.forEach((entry) => strapi.entityService.delete('api::favorite.favorite',entry.id));
        
        return ctx.send({message: 'favorites deleted successfully'});
    },

    async getmine(ctx) {
        const { id } = ctx.state.user;

        const favorite = await strapi.db.query('api::favorite.favorite').findMany({
            where: {
                users_permissions_user: id
            },
            select: ['id'],
            orderBy: {
                id: 'desc'
            },
            populate: ['product']
        });
        return favorite;
    }

}));
