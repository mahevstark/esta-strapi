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
            a.attributes.unit = d.attributes.unit.data.attributes.title;
            a.attributes.image = i;
            return a;
        })

        return {data, meta};
    },
}) );
