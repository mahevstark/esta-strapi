'use strict';

const routes = require('./routes');
const controllers = require('./controllers');

module.exports = () => ({
    routes,
    controllers,
});
