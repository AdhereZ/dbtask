const config = {
  host: 'localhost',
  database: 'zjhdata',
  username: 'root',
  password: 'root1234',
  dialect: 'mysql',
  // port: 8011,
  pool: {
    max: 5,
    min: 0,
    acquire: 30000,
    idle: 10000
  }
};

module.exports = config