const path = require('path');

module.exports = ({ env }) => ({
  // connection: {
  //   client: 'sqlite',
  //   connection: {
  //     filename: path.join(__dirname, '..', env('DATABASE_FILENAME', '.tmp/data.db')),
  //   },
  //   useNullAsDefault: true,
  // },
  connection: {
    client: 'mysql',
    connection: {
      host: env('DATABASE_HOST', 'containers-us-west-59.railway.app'),
      port: env.int('DATABASE_PORT', 7385),
      database: env('DATABASE_NAME', 'estacar'),
      user: env('DATABASE_USERNAME', 'esta'),
      password: env('DATABASE_PASSWORD', 'Faisal284hr%%'),
      ssl: env.bool('DATABASE_SSL', true),
    },
  },
});
