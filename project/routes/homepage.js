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


router.get("/", function(req, res, next){
	var watch;
	var sale;

    //
    var cate;
    var nsx;
    productcateRepo.loadAll().then(rows3 => {
    	console.log(rows3);
    	cate = { danhsachsv3 : rows3};

    	nsxRepo.loadAll().then(rows4 => {
    		console.log(rows4);
    		nsx = { danhsachsv4 : rows4};

    		productRepo.loadAllTopWatch().then(rows2 => {
    			console.log(rows2);
    			watch = { danhsachsv1 : rows2};

    			productRepo.loadAllTopSale().then(rows1 => {
    				console.log(rows1);
    				sale = { danhsachsv2 : rows1};

    				productRepo.loadAllTopDate().then(rows => {
    					console.log(rows);
    					var dulieu = { danhsachsv : rows};
    					res.render('index', { danhsach: dulieu, danhsach1: watch, danhsach2: sale, danhsach3: cate, danhsach4: nsx, title: "Trang chủ" });
    				});

    			});
    		});
    	});
    });
  //res.render('index', { title: 'Final Project - Laptop Store Website - N4QPT' });
});


module.exports = router; 