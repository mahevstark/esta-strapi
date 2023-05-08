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
      host:  'containers-us-west-59.railway.app',
      port: 7385,
      database: 'estacar',
      user: 'esta',
      password:  'Faisal284hr%%',
      ssl:  true,
    },
  },
});
