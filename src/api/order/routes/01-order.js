module.exports = {
    
    routes: [
        { // Path defined with an URL parameter
            method: 'POST',
            path: '/orders/me',
            handler: 'order.createme',
        }
    ]
}