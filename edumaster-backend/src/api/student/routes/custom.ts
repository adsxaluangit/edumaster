export default {
    routes: [
      {
        method: 'GET',
        path: '/students/unassigned',
        handler: 'student.findUnassigned',
        config: { auth: false },
      },
      {
        method: 'GET',
        path: '/students/all-brief',
        handler: 'student.findAllBrief',
        config: { auth: false },
      },
    ],
  };
