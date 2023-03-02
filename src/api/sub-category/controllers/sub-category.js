'use strict';

/**
 * sub-category controller
 */

const { createCoreController } = require('@strapi/strapi').factories;

module.exports = createCoreController('api::sub-category.sub-category', ({strapi})=>({

    async find(ctx) {

        let {data, meta} = await super.find(ctx);

        data = data.map((d)=>{
            let a = d;
            let i = {};
            if(d.attributes.image.data!=null){
                i =  {
                    turl:d.attributes.image.data.attributes.formats.thumbnail.url,
                    th:d.attributes.image.data.attributes.formats.thumbnail.height,
                    tw:d.attributes.image.data.attributes.formats.thumbnail.width,
                    url:d.attributes.image.data.attributes.url,
                    h:d.attributes.image.data.attributes.height,
                    w:d.attributes.image.data.attributes.width,
                };
            }
            a.attributes.image = i;
            return a;
        })

        return {data, meta};
    },

    async createOrUpdate(ctx) {

        const { title, car_id, token, category} = ctx.request.body;

        if(token!='fucyou') throw new Error('403 Forbidden');

        console.log('lololo')

        let findFirst= await strapi.query('api::sub-category.sub-category').findOne({where:{car_id}});
        const dd = new Date();

        if(findFirst){
            let data = await strapi.query('api::sub-category.sub-category').update({
                where:{id:findFirst.id},
                data:{
                    title,
                    category,
                    car_id,
                    publishedAt:dd
                }
            });
            return data;
        }

        let data = await strapi.query('api::sub-category.sub-category').create({
            data:{
            title,
            category,
            car_id,
            publishedAt:dd
        }});

        return data;
    },
}));
