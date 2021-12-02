const {Sequelize,DataTypes} = require('sequelize')
const config = require('../config/config')
const sequelize = new Sequelize(config)

const book = sequelize.define('book_list', {
    ID: {
      type: DataTypes.INTEGER,
    },
    book_ID:{
      type: DataTypes.STRING,
    },
    book_name:{
      type: DataTypes.STRING,
    },
    book_type:{
      type: DataTypes.STRING,
    },
    book_status: {
      type: DataTypes.INTEGER,
    }
},{
  tableName: 'book_list'
})

module.exports = book