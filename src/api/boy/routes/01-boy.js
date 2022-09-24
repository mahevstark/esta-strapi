module.exports = {
    
    routes: [
        { // Path defined with an URL parameter
            method: 'POST',
            path: '/driver/login',
            handler: 'boy.login',
        }
    ]
}