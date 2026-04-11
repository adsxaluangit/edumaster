export default {
    routes: [
      {
        method: 'GET',
        path: '/students/unassigned',
        handler: 'student.findUnassigned',
        config: {
          auth: false,
        },
      },
    ],
  };
