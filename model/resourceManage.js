const {Sequelize,DataTypes} = require('sequelize')
const config = require('../config/config')
const sequelize = new Sequelize(config)

// 设备分布
const resourceManage = sequelize.define('r_manage_list', {
    ID: {
      type: DataTypes.INTEGER,
    },
    rm_resourcetype:{
      type: DataTypes.STRING,
    },
    rm_resourceID:{
      type: DataTypes.STRING,
    },
    rm_status: {
      type: DataTypes.INTEGER,
    },
    rm_count: {
      type: DataTypes.INTEGER,
    },
    rm_updatetime: {
      type: DataTypes.STRING,
    }
},{
  tableName: 'r_manage_list'
})

module.exports = resourceManage