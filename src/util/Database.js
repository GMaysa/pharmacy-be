import * as mysql from "mysql2"

export default function GetDatabaseConn(EnvValue) {
  const dbConnection = mysql.createConnection({
    host: EnvValue.DATABASE_HOST,
    port: EnvValue.DATABASE_PORT,
    user: EnvValue.DATABASE_USERNAME,
    password: EnvValue.DATABASE_PASSWORD,
    database: EnvValue.DATABASE_NAME
  });

  dbConnection.connect(function(err) {
    if (err) {
      console.error('[ERROR] connecting: ' + err.stack);
      return;
    }
    console.log('[INFO] connected as id ' + dbConnection.threadId);
  })

  return dbConnection
}