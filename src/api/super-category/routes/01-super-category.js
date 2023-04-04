module.exports = {
    routes: [
        { 
            method: 'GET',
            path: '/super-categories/all',
            handler: 'super-category.all',
        },
        { 
            method: 'GET',
            path: '/super-categories/compile-data/:id',
            handler: 'super-category.compileData',
        },
        { 
            method: 'POST',
            path: '/super-categories/turn-off-products',
            handler: 'super-category.turnOffProducts',
        }
    ]
}