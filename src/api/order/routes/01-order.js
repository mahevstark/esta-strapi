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
        }
    ]
}