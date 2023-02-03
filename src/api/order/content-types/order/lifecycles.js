const { sendPush } = require("../../../../../config/functions/sendpush");

module.exports = {

    async afterCreate(event){
        const { result, params } = event;

        const orderSelf = await strapi.db.query('api::order.order').findOne({
            where:{id: result.id},
            populate:['users_permissions_user']
        });
        const { name, push_token_android, push_token_ios, phoneNumber } = orderSelf.users_permissions_user;

        // post a request containing orderId to: https://hooks.airtable.com/workflows/v1/genericWebhook/appxSB5lt4hvlsNjd/wflYaRsTWHzYrcWBb/wtrRzyOlVZQLToeme
        const axios = require('axios');
        const payload = {
            orderId: result.id,
            name:name,
            phone:phoneNumber
        };
        console.log(payload);
        axios.post('https://hooks.airtable.com/workflows/v1/genericWebhook/appxSB5lt4hvlsNjd/wflYaRsTWHzYrcWBb/wtrRzyOlVZQLToeme', payload)
        // .then(function (response) {
        //     console.log(response);
        // })


        try{
            sendPush(
                [push_token_android,push_token_ios],
                `👍 Hi ${name}, We have just received your order, we're picking and packing it carefully for you!`,
                {
                    type:"NEW_ORDER",
                    orderId:result.id
                }
            );
            
        }catch(e){
            console.log(e);
        }
        
    },

    async afterUpdate(event){
        const { result, params } = event;

        const orderSelf = await strapi.db.query('api::order.order').findOne({
            where:{id: result.id},
            populate:['users_permissions_user']
        });
        console.log(orderSelf);
        const { name, push_token_android, push_token_ios } = orderSelf.users_permissions_user;
        let msg = ``;
        if(orderSelf.status=="confirmed"){
            msg = `👍 Hi ${name}, We have just received your order, we're picking and packing it carefully for you!`;
        }
        if(orderSelf.status=="assigning"){
            msg = `🙋🏻‍♂️ Hi ${name}, We have just assigned a delivery person to your order!`;
        }
        if(orderSelf.status=="packing"){
            return false;
            msg = `👍 Hi ${name}, We have just packed your order!`;
        }
        if(orderSelf.status=="coming"){
            msg = `🏃🏻 Hi ${name}, Your order is on its way!`;
        }
        if(orderSelf.status=="knocking"){
            msg = `🙋🏻‍♂️ Hi ${name}, We are at your door, please collect your order!`;
        }
        if(orderSelf.status=="delivered"){
            msg = `✅🎉 Hi ${name}, Your order has been delivered!, Thank you for shopping with us! to complain: 0300-9550284`;
        }
        if(orderSelf.status=="cancelled_by_user"){
            msg = `❌ Hi ${name}, Your order has been cancelled by you!`;
        }
        if(orderSelf.status=="cancelled_by_store"){
            msg = `❌ Hi ${name}, Your order has been cancelled by the store!`;
        }
        sendPush(
            [push_token_android,push_token_ios],
            msg,
            {
                type:"UPDATE_ORDER",
                orderId:result.id
            }
        );
    },

    
}