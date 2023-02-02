'use strict';

/**
 * product controller
 */
const csv = require('csv-parser');
        const fs = require('fs');
const { createCoreController } = require('@strapi/strapi').factories;

module.exports = createCoreController('api::product.product', ({strapi})=>({


    async find(ctx) {

        let {data, meta} = await super.find(ctx);

        let cats = await strapi.query('api::category.category').findMany({
            populate: ['sub_categories']
        });

        // make a map like: [ { cat_id:1, sub_cats:[1,2,3] }, { cat_id:2, sub_cats:[4,5,6] } ]

        let catMap = [];
        cats.map((cat)=>{
            let sub_cats = [];
            cat.sub_categories.map((sub_cat)=>{
                sub_cats.push(sub_cat.id);
            })
            catMap.push({
                cat_id: cat.id,
                sub_cats
            })
        })



        data = data.map((d,index)=>{

            let a = d;


            // if(index==0){
                
            // }
            // if()

            const subCatId = a.attributes.sub_category.data.id;
            // // find the cat_id from catMap
            let catId = 0;
            catMap.map((cat)=>{
                if(cat.sub_cats.includes(subCatId)){
                    catId = cat.cat_id;
                }
            })

            a.attributes.category = catId;
            

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
            let i = {};
            let imagee = null;
            if(d.attributes.image.data!=null && d.attributes.image.data.attributes.formats!=null){
                imagee = d.attributes.image.data.attributes.formats.thumbnail.url;
            }
            let as = [];
            d.attributes.attributes.data.map((da)=>{
                as.push({
                    title:da.attributes.title
                })
            })
            a.attributes.attributes = as;
            a.attributes.unit = d.attributes.unit?.data?.attributes?.title || "Uknown";
            a.attributes.image = i;
            a.attributes.original_price = a.attributes.sale_price;
            a.attributes.sale_price = sale_price;
            a.attributes.id = d.id;
            a.attributes.images = a.attributes.images?.data?.map((img)=>{
                return {
                    image: img.attributes.formats.thumbnail.url,
                    url: img.attributes.url,
                }
            })
            a.attributes.image = imagee;
            a = a.attributes;

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
        let i = {};
        if(d.attributes.image.data!=null){
            i = {
                turl:d.attributes.image.data.attributes.formats.thumbnail.url,
                th:d.attributes.image.data.attributes.formats.thumbnail.height,
                tw:d.attributes.image.data.attributes.formats.thumbnail.width,
                url:d.attributes.image.data.attributes.url,
                h:d.attributes.image.data.attributes.height,
                w:d.attributes.image.data.attributes.width,
            };
        }
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

    async importdata(ctx) {

        // // read csv file from src/products.csv
        
        // const results = [];
        // const results2 = [];
        // const results3 = [];


        // fs.createReadStream('src/products.csv')
        // .pipe(csv())
        // .on('data', (data) => results.push(data))
        // .on('end', async () => {
            
        //     results.map((r)=>{
        //         results2.push({
        //             title:r.title,
        //             purchase_price:r.purchase_price,
        //             sale_price:r.sale_price,
        //             stock:r.stock,
        //             unit:r.unit,
        //             sub_category:r.sub_category,
        //             published_at:dd,
        //             created_by_id:1,
        //             updated_by_id:1,
        //             locale:'en'
        //         })
        //     });

            
        //     // push in products table
        //     results2.map(async (rrr)=>{
        //         await strapi.db.query('api::product.product').create(
        //             {
        //                 data:rrr
        //             }
        //         );
        //     });
            

            
        // });
        const dd = new Date();

        const {
            title,
            sale_price,
            unit,
            sub_category,

            product_code,
        } = ctx.request.body;

        var resss = await strapi.db.query('api::product.product').create({
            data:{
                title:title,
                purchase_price:sale_price,
                sale_price:sale_price,
                stock:10,
                unit:unit,
                sub_category:sub_category,
                published_at:dd,
                created_by_id:1,
                updated_by_id:1,
                locale:'en',
                product_code:product_code
            }
        });

        return resss;
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

    async update_price(ctx) {

        const { id,sale_price } = ctx.request.body;

        let data = await strapi.db.query('api::product.product').update({
            where:{
                id:id
            },
            data:{
                sale_price:sale_price
            }
        });

        return {data};
    },
}) );
