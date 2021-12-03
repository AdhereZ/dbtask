const express=require('express')
const equip=require('../model/equip')
const auth = require('../middleware/auth')

const router=express.Router()

router.get('/getEquip',auth,async(req,res) => {
     let r
    if(req.query.id) {
      r = await equip.findAll({
        attributes: { exclude: ['ID'] },
        where:{
          id:req.query.id
        }
      }) 
    }
    else {
        r = await equip.findAll({
        attributes: { exclude: ['ID'] },
      })
    }
    if(r.length !== 0)
    return res.status(200).json({data:r,msg:'请求成功!'})
     else return res.status(404).json({msg:'没有这条记录'})
})

router.post('/changeEquip',auth,async(req,res) => {
    console.log(req.body);
    const r=await equip.create(req.body)
    if(!r)
    return res.status(400).json({msg:'添加设备失败！'})
    res.status(200).json({msg:'添加设备成功！',data:r})
})

module.exports = router