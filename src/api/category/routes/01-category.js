module.exports = {
    
    routes: [
        { // Path defined with an URL parameter
            method: 'GET',
            path: '/categories/for-category/:id',
            handler: 'category.forcategory',
        },
        
    ]
}