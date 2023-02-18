'use strict';

/**
 * super-category controller
 */

const { createCoreController } = require('@strapi/strapi').factories;

const sanitizeImage = (d) => {
    const i = {
        turl:d.image?.formats?.thumbnail?.url,
        th:d.image?.formats?.thumbnail?.height,
        tw:d.image?.formats?.thumbnail?.width,
        url:d.image?.url,
        h:d.image?.height,
        w:d.image?.width,
    };
    return i;
}

const makeThum = (d) => {
    if(!d) return null;
    let parts = d.split('/');
    let allParts = parts.slice(0, parts.length - 1).join('/');
    let lastPart = parts[parts.length - 1];
    let img = allParts + '/small_' + lastPart;

    return img;
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
    async compileData(ctx) {

        // fetch all categories 

        let data = await strapi.query('api::super-category.super-category').findMany(
            {
                where:{
                    published_at:{
                        $ne:null
                    },
                    locale:'en'
                },
                select: ['id', 'title','subtitle','available','not_available_reason','uid'],
                populate: {
                    image:{
                        select:['url']
                    },
                    categories:{
                        where:{
                            $not:{
                                published_at:null
                            },
                            locale:'en'
                        },
                        // orderBy: [{ category_order: 'asc' }],
                        select: ['id', 'title','subtitle','uid'],
                        populate:{
                            image:{
                                select:['url']
                            },
                            where:{
                                $not:{
                                    published_at:null
                                },
                                locale:'en'
                            },
                            sub_categories:{
                                where:{
                                    $not:{
                                        published_at:null
                                    },
                                    locale:'en'
                                },
                                // orderBy: [{ sub_category_order: 'asc' }],
                                select: ['id', 'title','uid'],
                                populate:{
                                    image:{
                                        select:['url']
                                    },
                                    products:{
                                        where:{
                                            $not:{
                                                published_at:null
                                            },
                                            locale:'en'
                                        },
                                        select:['id','title','subtitle','available','sale_price','stock','discount_type','discount', 'background_color', 'product_code'],
                                        // orderBy: [{ product_order: 'asc' }],
                                        populate:{
                                            image:{
                                                select:['url']
                                            },
                                            images:{
                                                select:['url']
                                            },
                                            unit:{
                                                select:['title']
                                            },
                                            attributes:{
                                                select:['title']
                                            },
                                        }
                                    },
                                    taxes:{
                                        select:['title','tax']
                                    }
                                }
                            }
                        },
                    }
                }
            }
        );
        
        // console.log('data',data);

        data = data?.map((d)=>{
            

            d.image = makeThum(d.image?.url);
            d.categories = d.categories?.map((c)=>{
                c.image = makeThum(c.image?.url);
                c.sub_categories = c.sub_categories?.map((sc)=>{
                    sc.image = makeThum(sc.image?.url);
                    sc.products = sc.products?.map((p)=>{
                        p.imager = p.image?.url;
                        p.image = makeThum(p.image?.url);
                        p.unit = p.unit?.title;
                        p.images = p.images?.map((i)=>{
                            i.image = makeThum(i?.url);
                            return i;
                        })
                        return p;
                    })
                    return sc;
                })
                return c;
            })
            return d;
        })

        // store this data in a file
        const fs = require('fs');
        const path = require('path');
        let filePath = path.join(__dirname, './../../../../public/data.json');
        fs.writeFileSync(filePath, JSON.stringify(data), 'utf8', (err) => {
            if (err) {
                console.log('Error writing file', err);
            } else {
                console.log('Successfully wrote file');
            }
        });

        var minified = {};

        data.map((sp)=>{
            sp.categories.map((c)=>{
                c.sub_categories.map((sp)=>{
                    sp.products.map((p)=>{

                        minified[p.id] = [
                            p.stock,
                            p.sale_price,
                            p.available
                        ];
                    })
                })
            })
        })
        filePath = path.join(__dirname, './../../../../public/mindata.json');
        fs.writeFileSync(filePath, JSON.stringify(minified), 'utf8', (err) => {
            if (err) {
                console.log('Error writing file', err);
            } else {
                console.log('Successfully wrote file');
            }
        });

        // upload this file to s3


        return data;
    },
}));
