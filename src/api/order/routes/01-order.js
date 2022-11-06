module.exports = {
    
    routes: [
        { // Path defined with an URL parameter
            method: 'POST',
            path: '/orders/me',
            handler: 'order.createme',
        },
        { 
            method: 'GET',
            path: '/orders/mine',
            handler: 'order.mine',
        },
        { 
            method: 'POST',
            path: '/orders/singleminenew',
            handler: 'order.singleminenew',
        },
        { 
            method: 'POST',
            path: '/orders/cancel',
            handler: 'order.cancelorder',
        }
    ]
}