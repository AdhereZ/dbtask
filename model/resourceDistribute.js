const {Sequelize,DataTypes} = require('sequelize')
const config = require('../config/config')
const sequelize = new Sequelize(config)

// 设备分布
const resourceDistribute = sequelize.define('r_distribute_list', {
    ID: {
      type: DataTypes.INTEGER,
    },
    rd_userID:{
      type: DataTypes.STRING,
    },
    rd_renttime:{
      type: DataTypes.STRING,
    },
    rd_returntime: {
      type: DataTypes.STRING,
    },
    rd_resourcetype: {
      type: DataTypes.STRING,
    },
    rd_resourceID: {
      type: DataTypes.STRING,
    }
},{
  tableName: 'r_distribute_list'
})

module.exports = resourceDistribute