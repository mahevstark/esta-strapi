'use strict';

/**
 * category controller
 */

const { createCoreController } = require('@strapi/strapi').factories;

module.exports = createCoreController('api::category.category', ({strapi})=>({

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
            a.attributes.image = i;
            return a;
        })

        return {data, meta};
    },

    async forcategory(ctx) {
        const { id } = ctx.params;
        
        const categories = await strapi.query('api::category.category').findMany({super_category: id});
        return categories;
    }
}));
