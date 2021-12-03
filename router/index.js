const express = require('express')
const router = express.Router()

router.use("/manage",require('./manage'))

router.use("/equip",require('./equip'))

module.exports = router