var express = require('express');
//format date
var moment = require('moment');
var config = require('../config/config');
var router = express.Router();

var mysql = require('mysql');
//CSDL
var productcateRepo = require('../repos/productcateRepo'); //loai sp
var nsxRepo = require('../repos/nsxRepo'); //nsx
var categoryRepo = require('../repos/categoryRepo');
var productRepo = require('../repos/productRepo');
var billRepo = require('../repos/billRepo');

router.get("",function(req,res,next){
res.json({"message" : "đây là admin"});
});

module.exports = router;