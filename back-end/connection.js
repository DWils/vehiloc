const {Client} = require("pg");

const client = new Client({
    host : 'localhost' ,
    user : 'vehiloc' ,
    port : 5432,
    password : 'admin',
    database : 'vehiloc'
})

module.exports = client;