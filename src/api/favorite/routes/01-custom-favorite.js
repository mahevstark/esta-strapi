module.exports = {
    
    routes: [
        { // Path defined with an URL parameter
            method: 'POST',
            path: '/favorites/me',
            handler: 'favorite.createme',
        },
        { // Path defined with an URL parameter
            method: 'GET',
            path: '/favorites/mine',
            handler: 'favorite.getmine',
        },
        { // Path defined with an URL parameter
            method: 'DELETE',
            path: '/favorites/mine/:id',
            handler: 'favorite.deletemine',
        },
        { // Path defined with an URL parameter
            method: 'DELETE',
            path: '/favorites/mine',
            handler: 'favorite.deletemineall',
        },
    ]
}