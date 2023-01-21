module.exports = {
    
    routes: [
        { // Path defined with an URL parameter
            method: 'GET',
            path: '/categories/for-category/:id',
            handler: 'category.forcategory',
        },

        { // Path defined with an URL parameter
            method: 'GET',
            path: '/categories/compile-data/:id',
            handler: 'category.compileData',
        },
        
    ]
}