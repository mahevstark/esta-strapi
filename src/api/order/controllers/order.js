'use strict';

/**
 * order controller
 */

const { createCoreController } = require('@strapi/strapi').factories;
const { getService } = require('@strapi/plugin-users-permissions/server/utils');

module.exports = createCoreController('api::order.order',({strapi})=>({



    async createme(ctx) {
        const { id, username, push_token_android, push_token_ios, balance } = ctx.state.user;

        const { address_id, products, payment_method, scheduled, scheduled_for, notes,area:areaId, slip:s_slip, use_wallet:used_wallet, use_wallet_balance:used_wallet_balance, location } = ctx.request.body;

        const area = await strapi.db.query('api::area.area').findOne({
            where: {
                id: areaId,
                charge:{
                    available:true
                }
            },
            populate:['charge'],
        });
        if(!area || !area.charge){
            return ctx.badRequest('We are not serving this area yet');
        }


        // data from api

        let product_ids = []
        products.map((product)=>{
            if(!product_ids.includes(product.id))
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
        let products_real = await strapi.db.query('api::product.product').findMany({
            where: {
                id:product_ids,
                available:true
            }
        });
        const count_total_orders = await strapi.query('api::order.order').count();
        const to_charge = area.charge;
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
            const oprod = products.find((p)=>p.id===product.id)
            if(oprod){
            
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
                const qty = oprod?.qty || 99;
                products_real[index].qty = qty;
                let ptotal = price * qty;
                

                // add tax to ptotal
                tax += (taxp/100)*ptotal;
                total_price += ptotal;

                console.log(` ${product.title} - ${qty} - ${price} - ${ptotal} - ${pdiscount} - ${discount} - ${tax} - ${total_price}`);
            }
        });

        const total_total = Math.ceil((total_price + tax + service_fee + delivery_charges));
        total_price = Math.ceil(total_price);

        // get the proof of payment if done by card
        let slip = {id:0};
        if(payment_method=='card'){
            console.log('s_slip',s_slip);
            slip = await strapi.db.query('api::slip.slip').findMany({where:{slip:s_slip}, groupBy:['id']});
            slip = slip[0];
        }

        
        // if user is paying some amount or all amount from wallet, check if wallet has balance
        if(used_wallet){
            if(balance < used_wallet_balance){
                return ctx.badRequest('Insufficient balance');
            }
        }

        if(used_wallet_balance<0){
            return ctx.badRequest('Invalid amount');
        }

        // main order object
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
            phone_number:username,
            used_wallet,
            used_wallet_balance,
            taxp:area.charge.tax,
            location:JSON.stringify(location)
        }

        
        

        const order = await strapi.service('api::order.order').create({data:order_data});
        const orderId = order.id;

        // update slip for order relation with orderId
        if(payment_method=='card'){
            await strapi.entityService.update('api::slip.slip', slip.id, {data:{order:orderId}});
        }

        
        if(used_wallet){
            
            const walletEntry = {
                before:balance,
                after:(balance-used_wallet_balance),
                reason:"Order amount deduction for #"+order_uid,
                users_permissions_user: id
            }
            await strapi.db.query('api::wallet.wallet').create({data:walletEntry});
            await getService('user').edit(id, {balance:(balance-used_wallet_balance)});


        }
        

        products_real.map(async (product)=>{

            const oprod = products.find((p)=>p.id===product.id)
            if(oprod){
            
                let price = product.total_price;
                
                const pdata = {
                    order:orderId,
                    product:product.id,
                    price:price,
                    qty: product.qty || 1,
                    total:Math.ceil(price * (product.qty)),
                    discount:Math.ceil(price * (product.pdiscount)) || 0,
                    notes:oprod?.notes
                }
                await strapi.service('api::order-product.order-product').create({data:pdata});
            }
        });
        console.log('total_price 10');

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
        const statuses_list = [ 'processing', 'confirmed', 'assigning', 'packing', 'coming', 'knocking', 'delivered','cancelled_by_user', 'cancelled_by_store'];
        let statuses = []
        if (type === 'all') {
            statuses = statuses_list;
        }else if(type=='active'){
            statuses = [ 'processing', 'confirmed', 'assigning', 'packing', 'coming', 'knocking' ];
        }else if(type=='cancelled'){
            statuses = ['cancelled_by_user', 'cancelled_by_store' ];
        }
        else if(type=='past'){
            statuses = [
                'delivered',
                'cancelled_by_user',
                'cancelled_by_store'
            ];
        }

        const limit = 10;
        const start = (page-1)*limit;
        
        const orders = await strapi.db.query('api::order.order').findWithCount({
            where:type=='scheduled'?{users_permissions_user: id, scheduled:true, status:'processing'}:{users_permissions_user: id, status :{
                $contains: statuses
            }},
            populate:['order_products','order_products.product', 'slips'],
            limit,
            offset: start,
            orderBy: {id:'desc'}
        });

        const more_avalaible = (orders[1] > ((page)*limit))
        return {orders:orders[0],total:orders[1],more_avalaible, start};
    },

    async singleminenew(ctx) {
        const { id,username } = ctx.state.user;
        const {id:orderId} = ctx.request.body  || {id:0};

        console.log('id',orderId);
        const order = await strapi.db.query('api::order.order').findOne({
            where:{
                id:orderId,
                // users_permissions_user: id
            },
            populate:['order_products','order_products.product','area','area.charge', 'slips'],
        });

        if( !order ){
            return ctx.badRequest('Order not found');
        }

        return {order};
    },

    async findOne(ctx) {

        let {data, meta} = await super.findOne(ctx);


        const order = await strapi.db.query('api::order.order').findOne({
            where:{
                id:data.id,
                // users_permissions_user: id
            },
            populate:['order_products','order_products.product','area','area.charge', 'slips', 'users_permissions_user'],
        });

        if( !order ){
            return ctx.badRequest('Order not found');
        }

        return {order};
    },

    async cancelorder(ctx) {
        const { id } = ctx.state.user;
        const {order_id} = ctx.request.body;
        const order = await strapi.db.query('api::order.order').findOne({
            where:{
                id:order_id,
                users_permissions_user: id
            }
        });
        if(!order) {
            return ctx.badRequest('Order not found');
        }

        if(order.status!=='processing') {
            return ctx.badRequest('Order cannot be cancelled');
        }
        const x = await strapi.entityService.update('api::order.order',order_id, {data: {status:'cancelled_by_user'}});
        console.log('x',x);
        return {message:'Order cancelled successfully'};
    }

}));
