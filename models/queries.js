const pgp = require('pg-promise')()({database: 'todo'})

const getAllInfo = table =>
  pgp.any(`SELECT * FROM ${table};`)

const getCondtionedInfo = (table, column, subject) =>
  pgp.any(`SELECT * FROM ${table} WHERE ${column} = $1;`, subject)

module.exports = {
  getAllInfo,
  getCondtionedInfo,
}