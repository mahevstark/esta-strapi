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

    async createOrUpdate(ctx) {

        const { title, car_id, token} = ctx.request.body;

        if(token!='fucyou') throw new Error('403 Forbidden');

        let findFirst= await strapi.query('api::category.category').findOne({where:{car_id}});
        const dd = new Date();

        if(findFirst){
            let body = {
                where:{id:findFirst.id},
                data:{
                    title,
                    publishedAt:dd
                }
            };
            let data = await strapi.query('api::category.category').update(body);

            console.log(body);
            return data;
        }

        let data = await strapi.query('api::category.category').create({
            data:{
            title,
            super_category:1,
            car_id,
            publishedAt:dd
        }});

        return data;
    },
}));
