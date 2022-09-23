'use strict';

/**
 * order controller
 */

const { createCoreController } = require('@strapi/strapi').factories;

module.exports = createCoreController('api::order.order',({strapi})=>({



    async createme(ctx) {
        const { id } = ctx.state.user;

        const area = await strapi.db.query('api::area.area').findOne({
            where: {
                user: id,
                charges:{
                    available:true
                }
            },
            populate:['charges'],
        });
        if(!area || !area.charges || area.charges.length==0){
            return ctx.badRequest('Please select an area first');
        }

        console.log('area', area);


        // data from api
        const { address_id, products, payment_method, scheduled, scheduled_for, notes } = ctx.request.body;

        let product_ids = []
        products.map((product)=>{
            product_ids.push(product.id)
        });

        console.log('address_id',address_id);

        // make sure address exists
        let address = await strapi.db.query('api::address.address').findMany({
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
        
        
        // make sure products exists and are available
        let products_real = await strapi.query('api::product.product').findMany({id_in:product_ids, published:true, available:true});
        const count_total_orders = await strapi.query('api::order.order').count();
        const to_charge = area.charges[0];
        let total_price = 0;
        let taxp = to_charge.tax;
        let tax = 0;
        let discount = 0;
        let service_fee = to_charge.service_fee;
        let delivery_charges = to_charge.delivery_charges;
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
            discount += pdiscount;
            let price = base_price - pdiscount;
            products_real[index].pdiscount = pdiscount;
            products_real[index].total_price = price;
            const qty = products.find((p)=>p.id===product.id).qty;
            products_real[index].qty = qty;
            let ptotal = price * qty;
            

            // add tax to ptotal
            tax += (taxp/100)*ptotal;
            total_price += ptotal;
            console.log('ptotal',price);
        });

        const total_total = (total_price + tax + service_fee + delivery_charges) - discount;

        let order_data = {
            users_permissions_user: id,
            bill:total_price,
            total_price:total_total,
            tax,
            delivery_charges,
            discount,
            service_fee,
            payment_method,
            order_uid,
            address:address_id,
            address_text,
            scheduled,
            scheduled_for,
            notes,
            area:area.id,
        }
        

        const order = await strapi.service('api::order.order').create({data:order_data});
        const orderId = order.id;

        products_real.map(async (product)=>{
            
            
            let price = product.total_price;
            
            const pdata = {
                order:orderId,
                product:product.id,
                price:price,
                qty: product.qty || 1,
                total:price * (product.qty),
                discount:product.pdiscount || 0,
                notes:products.find((p)=>p.id===product.id).notes
            }

            await strapi.service('api::order-product.order-product').create({data:pdata});
        });

        return order;
    },

    async mine(ctx) {
        const { id } = ctx.state.user;
        const {type, page} = ctx.query  || {type:'all',page:1};
        // processing
        // confirmed
        // assigning
        // packing
        // coming
        // knocking
        // delivered
        const statuses_list = [ 'processing', 'confirmed', 'assigning', 'packing', 'coming', 'knocking', 'delivered' ];
        let statuses = []
        if (type === 'all') {
            statuses = statuses_list;
        }else if(type=='active'){
            statuses = [ 'processing', 'confirmed', 'assigning', 'packing', 'coming', 'knocking' ];
        }

        const limit = 1;

        const orders = await strapi.db.query('api::order.order').findWithCount({
            where:type=='scheduled'?{users_permissions_user: id, scheduled:true, status:'processing'}:{users_permissions_user: id, status :{
                $contains: statuses
            }},
            populate:['order_products','order_products.product'],
            limit,
            start: (page-1)*limit,
        });

        console.log(page)

        const more_avalaible = (orders[1] > ((page-1)*limit))
        return {orders:orders[0],total:orders[1],more_avalaible};
    }

}));
