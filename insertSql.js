// const Connection = require("mysql2/typings/mysql/lib/Connection");
let {pool} = require("./config/db")
// importpool from "./config/db"

console.log(pool);
  pool.query("insert into admin values(1,'raghavendra','raghavendra@gmail.com','1234')");

//   Connection.release()

console.log();