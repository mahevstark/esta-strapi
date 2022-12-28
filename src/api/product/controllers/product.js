'use strict';

/**
 * product controller
 */

const { createCoreController } = require('@strapi/strapi').factories;

module.exports = createCoreController('api::product.product', ({strapi})=>({


    async find(ctx) {

        let {data, meta} = await super.find(ctx);

        data = data.map((d)=>{
            let a = d;
            const i = {
                turl:d.attributes.image.data.attributes.formats.thumbnail.url,
                th:d.attributes.image.data.attributes.formats.thumbnail.height,
                tw:d.attributes.image.data.attributes.formats.thumbnail.width,
                url:d.attributes.image.data.attributes.url,
                h:d.attributes.image.data.attributes.height,
                w:d.attributes.image.data.attributes.width,
            };
            let as = [];
            d.attributes.attributes.data.map((da)=>{
                as.push({
                    title:da.attributes.title
                })
            })
            a.attributes.attributes = as;
            console.log(d.attributes.attributes)
            a.attributes.unit = d.attributes.unit.data?.attributes?.title || "Uknown";
            a.attributes.image = i;
            return a;
        })

        return {data, meta};
    },

    async findOne(ctx) {

        let {data, meta} = await super.findOne(ctx);

        let a = data;
        let d= a;
        const i = {
            turl:d.attributes.image.data.attributes.formats.thumbnail.url,
            th:d.attributes.image.data.attributes.formats.thumbnail.height,
            tw:d.attributes.image.data.attributes.formats.thumbnail.width,
            url:d.attributes.image.data.attributes.url,
            h:d.attributes.image.data.attributes.height,
            w:d.attributes.image.data.attributes.width,
        };
        let as = [];
        d.attributes.attributes.data.map((da)=>{
            as.push({
                title:da.attributes.title
            })
        })
        a.attributes.attributes = as;
        console.log(d.attributes.attributes)
        a.attributes.unit = d.attributes.unit.data.attributes.title;
        a.attributes.image = i;

        data = a;

        return {data, meta};
    },

    async searchsuggest(ctx) {

        const { search:s } = ctx.query;
        const search = s.toLowerCase();

        if(search==''){
            return ctx.badRequest('Nothing to search');
        }

        // it is case insensitive
        const products = await strapi.db.query('api::product.product').findMany({
            where:{
                $or:[
                    {
                        title: {
                            $contains:search
                        },
                    },
                    {
                        subtitle: {
                            $contains:search
                        },
                    },
                    {
                        tags: {
                            $contains:search
                        },
                    },
                ]
            },
            populate:['image'],
            limit:10,
            groupBy:['id'],
        });

        let results = [];
        products.map((p)=>{
            results.push({
                id:p.id,
                title:p.title,
                subtitle:p.subtitle,
                image:p.image?.formats?.thumbnail?.url,
                type:'product',
                price:p.sale_price,
            })
        });

        return {data:results};
    },
}) );
