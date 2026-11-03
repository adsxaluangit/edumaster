"use strict";
/**
 * backup router — Custom route for database backup
 * auth: false → we handle JWT verification manually in the controller
 */
Object.defineProperty(exports, "__esModule", { value: true });
exports.default = {
    routes: [
        {
            method: 'POST',
            path: '/backup',
            handler: 'backup.create',
            config: {
                auth: false,
                policies: [],
                middlewares: [],
            },
        },
    ],
};
