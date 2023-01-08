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

            let discountedVal = 0;
            let discounted = a.attributes.discount_type!="none";

            if(discounted){

                if(a.attributes.discount_type=="percent"){
                    discountedVal = (a.attributes.sale_price * a.attributes.discount)/100;
                }else{
                    discountedVal = a.attributes.discount;
                }
            }

            const sale_price = parseInt(a.attributes.sale_price - discountedVal);

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
            a.attributes.unit = d.attributes.unit.data?.attributes?.title || "Uknown";
            a.attributes.image = i;
            a.attributes.original_price = a.attributes.sale_price;
            a.attributes.sale_price = sale_price;
            return a;
        })

        return {data, meta};
    },

    async findOne(ctx) {

        let {data, meta} = await super.findOne(ctx);

        let a = data;
        let d= a;


        let discountedVal = 0;
        let discounted = a.attributes.discount_type!="none";

        if(discounted){

            if(a.attributes.discount_type=="percent"){
                discountedVal = (a.attributes.sale_price * a.attributes.discount)/100;
            }else{
                discountedVal = a.attributes.discount;
            }
        }

        const sale_price = parseInt(a.attributes.sale_price - discountedVal);

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
        a.attributes.unit = d.attributes.unit.data.attributes.title;
        a.attributes.image = i;
        a.attributes.original_price = a.attributes.sale_price;
        a.attributes.sale_price = sale_price;

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
        let data = await strapi.db.query('api::product.product').findMany({
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
            populate:['image','images','unit','attributes'],
            fields:['id','title','subtitle','available','sale_price','stock','discount_type','discount'],
            limit:20,
            groupBy:['id'],
        });

        // let results = [];
        // products.map((p)=>{
        //     results.push({
        //         id:p.id,
        //         title:p.title,
        //         subtitle:p.subtitle,
        //         image:p.image?.formats?.thumbnail?.url,
        //         type:'product',
        //         price:p.sale_price,
        //     })
        // });


        data = data.map((d)=>{


            let discountedVal = 0;
            let discounted = a.attributes.discount_type!="none";

            if(discounted){

                if(a.attributes.discount_type=="percent"){
                    discountedVal = (a.attributes.sale_price * a.attributes.discount)/100;
                }else{
                    discountedVal = a.attributes.discount;
                }
            }

            const sale_price = parseInt(a.attributes.sale_price - discountedVal);

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
            a.attributes.unit = d.attributes.unit.data?.attributes?.title || "Uknown";
            a.attributes.image = i;
            a.attributes.original_price = a.attributes.sale_price;
            a.attributes.sale_price = sale_price;
            return a;
        })

        return {data};
    },
}) );
