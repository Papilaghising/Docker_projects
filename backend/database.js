const mysql = require('mysql2');

const pool = mysql.createPool({
  host: 'mysql',
  user: 'papila',
  password: 'papila1011',
  database: 'docker_db',
  waitForConnections: true,
  connectionLimit: 10,
  queueLimit: 0
});

module.exports = pool;