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

router.get("/",function(req,res,next){
	res.send({ message: "Trang không tồn tại" });
});


router.get("/topsale", function(req, res,next) {
    var watch;
    var sale;

    //
    var cate;
    var nsx;
    productcateRepo.loadAll().then(rows3 => {
        console.log(rows3);
        cate = { danhsachsv3 : rows3 };

        nsxRepo.loadAll().then(rows4 => {
            console.log(rows4);
            nsx = { danhsachsv4 : rows4 };

            productRepo.loadAllTopWatch().then(rows2 => {
                console.log(rows2);
                watch = { danhsachsv1 : rows2 };

                productRepo.loadAllTopSale().then(rows1 => {
                    console.log(rows1);
                    sale = { danhsachsv : rows1 };

                    productRepo.loadAllTopDate().then(rows => {
                        console.log(rows);
                        var dulieu = { danhsachsv2 : rows };
                        res.render('products2', { danhsach: sale, danhsach1: watch, danhsach2: dulieu, danhsach3: cate, danhsach4: nsx, page: null, title:"sản phẩm bán chạy" });
                    });
                });
            });
        });
    });  
});


router.get("/new",function(req,res,next){
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
                        res.render('products2', { danhsach: dulieu, danhsach1: watch, danhsach2: sale, danhsach3: cate, danhsach4: nsx, page: null, title:"Sản phẩm mới" });
                    });
                });
            });
        });
    });  
});

module.exports = router;