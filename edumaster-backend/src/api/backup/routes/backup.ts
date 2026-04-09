/**
 * backup router — Custom route for database backup
 */

export default {
  routes: [
    {
      method: 'POST',
      path: '/backup',
      handler: 'backup.create',
      config: {
        auth: {
          scope: ['find'], // requires authenticated user
        },
        policies: [],
        middlewares: [],
      },
    },
  ],
};
