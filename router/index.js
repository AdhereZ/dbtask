const express = require('express')
const router = express.Router()

router.use("/manage",require('./manage'))

module.exports = router