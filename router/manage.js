//账号管理
const express=require('express')
const manage=require('../model/manage')

const router=express.Router()

router.get('/', async(req,res) => {
   const x = await manage.findAll({
     attributes: {exclude: ['id','createdAt','updatedAt']}
   })
   res.json(x)
})

module.exports = router;