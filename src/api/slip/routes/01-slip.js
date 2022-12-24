module.exports = {
    
    routes: [
        { // Path defined with an URL parameter
            method: 'POST',
            path: '/slips/create',
            handler: 'slip.create',
        },
        { // Path defined with an URL parameter
            method: 'POST',
            path: '/slips/paynow',
            handler: 'slip.payment_success_now',
        }
    ]
}