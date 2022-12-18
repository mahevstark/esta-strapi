'use strict';

/**
 * slip service
 */

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::slip.slip');
