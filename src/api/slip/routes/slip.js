'use strict';

/**
 * slip router
 */

const { createCoreRouter } = require('@strapi/strapi').factories;

module.exports = createCoreRouter('api::slip.slip');
