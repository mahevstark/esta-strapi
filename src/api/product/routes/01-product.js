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
        },
        { 
            method: 'POST',
            path: '/products/update_price',
            handler: 'product.update_price',
        }
    ]
}