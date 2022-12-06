'use strict';

/**
 * super-category controller
 */

const { createCoreController } = require('@strapi/strapi').factories;

const sanitizeImage = (d) => {
    const i = {
        turl:d.image?.formats?.thumbnail?.url,
        th:d.image.formats?.thumbnail?.height,
        tw:d.image.formats?.thumbnail?.width,
        url:d.image?.url,
        h:d.image?.height,
        w:d.image?.width,
    };
    return i;
}

module.exports = createCoreController('api::super-category.super-category',({strapi})=>({

    // async find(ctx) {
    //     let all = await super.find(ctx);
    //     console.log(all);
    //     let {data, meta} = all;

    //     data = data.map((d)=>{
    //         let a = d;
    //         const i = {
    //             turl:d.attributes.image.data.attributes.formats.thumbnail.url,
    //             th:d.attributes.image.data.attributes.formats.thumbnail.height,
    //             tw:d.attributes.image.data.attributes.formats.thumbnail.width,
    //             url:d.attributes.image.data.attributes.url,
    //             h:d.attributes.image.data.attributes.height,
    //             w:d.attributes.image.data.attributes.width,
    //         };
    //         a.attributes.image = i;
    //         return a;
    //     })

    //     return {data, meta};
    // },

    async all(ctx){


        let data = await strapi.query('api::super-category.super-category').findMany(
            {
                where:{...ctx.query,$not:{
                    published_at:null
                }},
                select: ['id', 'title','subtitle','available','not_available_reason','uid'],
                populate: {
                    image:true,
                    categories:{
                        where:{
                            $not:{
                                published_at:null
                            }
                        },
                        select: ['id', 'title','subtitle','uid'],
                        populate:{
                            image:true,
                            where:{
                                $not:{
                                    published_at:null
                                }
                            },
                            sub_categories:{
                                publicationState: 'live',
                                select: ['id', 'title','uid'],
                                populate:{
                                    image:true
                                }
                            }
                        },
                    }
                }
            }
        );
        
        // console.log('data',data);

        data = data.map((d)=>{
            d.categories = d.categories.map((c)=>{
                
                c.image = sanitizeImage(c);
                c.sub_categories = c.sub_categories.map((s)=>{
                    console.log('withotu image:', s.title)
                    s.image = sanitizeImage(s);
                    return s;
                })
                return c;
            })
            d.image = sanitizeImage(d);
            return d;
        })

        return data;
    },
}));
