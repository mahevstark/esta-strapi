module.exports = ({ env }) => ({
  host: env('HOST', '0.0.0.0'),
  port: env.int('PORT', 1700),
  app: {
    keys: env.array('APP_KEYS'),
  },
});