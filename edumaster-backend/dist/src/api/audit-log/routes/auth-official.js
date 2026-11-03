"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
module.exports = {
    routes: [
        {
            method: 'POST',
            path: '/auth/login-official',
            handler: 'auth-official.login',
            config: {
                auth: false,
            },
        },
    ],
};
