module.exports = {
    routes: [
        {
            method: 'POST',
            path: '/transaction/status',
            handler: 'transaction.status',
        },
        {
            method: 'POST',
            path: '/transaction/notif',
            handler: 'transaction.notif',
        }
    ]
}