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
    },

    async compileData(ctx) {

        // fetch all categories 

        let scategories = await strapi.query('api::super-category.super-category').findMany({
            where:{
                published_at:{
                    $ne:null
                },
                locale:'en'
            },
            select:['id','title','subtitle'],
            popluate:{
                image:{
                    select:['url']
                },
                categories:{

                    where:{
                        published_at:{
                            $ne:null
                        }
                    },
                    select:[
                        'id',
                        'title',
                        'subtitle'
                    ],
                    populate:{
                        image:{
                            select:['url']
                        },
                        sub_categories:{
                            where:{
                                published_at:{
                                    $ne:null
                                }
                            },
                            select:['id','title','subtitle'],
        
                            populate:{
                                products:{
                                    where:{
                                        published_at:{
                                            $ne:null
                                        }
                                    },
                                    select:['id','title','subtitle','available','sale_price','stock','discount_type','discount'],
                                    populate:{
                                        image:{
                                            select:['url']
                                        },
                                        images:{
                                            select:['url']
                                        },
                                        units:{
                                            select:['title']
                                        },
                                        attributes:{
                                            select:['title']
                                        },
                                    }
                                }
                            }
                        },
        
                    }
                }
            }
            
        });

        // categories = categories.map((d)=>{
        //     d.thumbnail = d.image?.url?.replace('amazonaws.com/','amazonaws.com/thumbnail_');
        //     return d;
        // })


        return scategories;
    },
}));
