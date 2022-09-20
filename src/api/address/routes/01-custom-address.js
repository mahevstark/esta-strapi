module.exports = {
    
    routes: [
        { // Path defined with an URL parameter
            method: 'POST',
            path: '/addresses/me',
            handler: 'address.createme',
        },
        { // Path defined with an URL parameter
            method: 'GET',
            path: '/addresses/mine',
            handler: 'address.getmine',
        },

        { // Path defined with an URL parameter
            method: 'PUT',
            path: '/addresses/mine/:id',
            handler: 'address.putmine',
        },
        { // Path defined with an URL parameter
            method: 'DELETE',
            path: '/addresses/mine/:id',
            handler: 'address.deletemine',
        },
    ]
}