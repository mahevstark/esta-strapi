'use strict';

module.exports = [
    {
        method: 'POST',
        path: '/auth/local/register-otp',
        handler: 'auth.registerOTP',
        config: {
            middlewares: ['plugin::users-permissions.rateLimit'],
            prefix: '',
        },
    },
];
