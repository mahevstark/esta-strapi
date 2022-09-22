'use strict';

/**
 * order controller
 */

const { createCoreController } = require('@strapi/strapi').factories;

module.exports = createCoreController('api::order.order',({strapi})=>({



    async createme(ctx) {
        const { id } = ctx.state.user;

        const { address_id, products, payment_method, scheduled, scheduled_for, notes } = ctx.request.body;

        let product_ids = []
        products.map((product)=>{
            product_ids.push(product.id)
        });

        console.log('address_id',address_id);

        const address = await strapi.db.query('api::address.address').findMany({
            where:{
                id:address_id,
                users_permissions_user: id
            }
        });
        if(address && address.length > 0) {
            address = address[0];
        }else{
            return ctx.badRequest(`You are not authorized to use this address`);
        }
        
        
        let products_real = await strapi.query('api::product.product').findMany({id_in:product_ids, published:true, available:true});
        const count_total_orders = await strapi.query('api::order.order').count();

        let total_price = 0;
        let tax = 0;
        let discount = 0;
        let serivce_fee = 0;
        let delivery_charges = 0;
        let order_uid = count_total_orders+1;
        let address_text = address.house + ', ' + address.block + ', ' + address.near;

        // add discount
        products_real.map(async (product,index)=>{
            let base_price = product.sale_price;
            let pdiscount = 0;
            if(product.discount_type==='percent') {
                pdiscount = (product.discount/100)*base_price;
            }else if(product.discount_type==='flat') {
                pdiscount = product.discount;
            }
            let price = base_price - pdiscount;
            products_real[index].pdiscount = pdiscount;
            products_real[index].total_price = price;
            const qty = products.find((p)=>p.id===product.id).quantity;
            products_real[index].qty = qty;
            let ptotal = price * qty;
            total_price += ptotal;
        });

        let order_data = {
            users_permissions_user: id,
            total_price,
            tax,
            delivery_charges,
            discount,
            serivce_fee,
            payment_method,
            order_uid,
            address:address_id,
            address_text,
            scheduled,
            scheduled_for,
            notes
        }

        return "f for duck";

        const order = await strapi.service('api::order.order').create({data:order_data});
        const orderId = order.id;

        products_real.map(async (product)=>{
            
            
            let price = product.total_price;
            
            const pdata = {
                order:orderId,
                product:product.id,
                price:price,
                qty: qty || 1,
                total:price * (qty),
                discount:product.pdiscount || 0,
                notes:products.find((p)=>p.id===product.id).notes
            }

            await strapi.service('api::order-product.order-product').create({data:pdata});
        });

        return order;
    }
}));
