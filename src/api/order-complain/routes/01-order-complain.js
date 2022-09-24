module.exports = {
    
    routes: [
        { // Path defined with an URL parameter
            method: 'POST',
            path: '/orders/complains/me',
            handler: 'order-complain.createme',
        },
        { 
            method: 'GET',
            path: '/orders/complains/me',
            handler: 'order-complain.mine',
        }
    ]
}