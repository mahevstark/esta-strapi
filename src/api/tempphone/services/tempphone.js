'use strict';

/**
 * tempphone service
 */

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::tempphone.tempphone');
