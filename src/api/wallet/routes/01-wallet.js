module.exports = {
    routes: [
        {
            method: 'POST',
            path: '/wallet/topup',
            handler: 'wallet.topup',
        },
        { 
            method: 'GET',
            path: '/wallet/mine',
            handler: 'wallet.mine',
        }
    ]
}