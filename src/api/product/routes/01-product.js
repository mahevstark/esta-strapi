module.exports = {
    routes: [
        { 
            method: 'GET',
            path: '/products/searchsuggest',
            handler: 'product.searchsuggest',
        },
        { 
            method: 'POST',
            path: '/products/importdata',
            handler: 'product.importdata',
        }
    ]
}