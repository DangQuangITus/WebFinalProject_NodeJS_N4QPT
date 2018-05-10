var express = require('express');
var router = express.Router();

var mysql = require('mysql');


/* GET home page. */
router.get('/index.html', function(req, res, next) {
  res.render('index', { title: 'Final Project - Laptop Store Website - N4QPT' });
});

router.get('/', function(req, res, next) {
  res.render('index', { title: 'Final Project - Laptop Store Website - N4QPT' });
});
/* GET dashboard page. */
router.get('/index1.html', function(req, res, next) {
  res.render('index1', { title: 'dashboard' });
});
/* GET product page. */
router.get('/products.html', function(req, res, next) {
  res.render('products', { title: 'product' });
});
/* GET product_detail page. */
router.get('/product_detail.html', function(req, res, next) {
  res.render('product_detail', { title: 'product_detail' });
});
/* GET cart.html page. */
router.get('/cart.html', function(req, res, next) {
  res.render('cart', { title: 'cart' });
});
/* GET checkout.html page. */
router.get('/checkout.html', function(req, res, next) {
  res.render('checkout', { title: 'checkout' });
});

/* GET register.html page. */
router.get('/register.html', function(req, res, next) {
  res.render('register', { title: 'register' });
});
/* GET cdonhang page. */
router.get('/donhang.html', function(req, res, next) {
  res.render('donhang', { title: 'donhang' });
});
/* GET sanpham page. */
router.get('/sanpham.html', function(req, res, next) {
  res.render('sanpham', { title: 'sanpham' });
});
/* GET sanpham1.html page. */
var dulieu1;

router.get('/sanpham1.html', function(req, res, next) {
  var connection = mysql.createConnection({
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: '1234',
    database: 'qlbh'
  });

  connection.connect();

  connection.query("SELECT * FROM `productcate`", function (error, rows) {
    if (error) throw error;
    console.log('The solution is: ', rows);
    var cate = {value: rows};
    for (c of cate.value) {
      console.log(`#${c.CatID} || ${c.CatName}`);
    }
    var dulieu = { danhsachsv : rows};
    dulieu1 = { danhsachsv : rows};
  //var dulieu = { danhsachsv : ["viet","nga","my","an do"]};

  res.render('sanpham1', { danhsach: dulieu });

  connection.end();
});
  //res.render('sanpham1', { title: 'loai san pham' });
});
/* GET checkout.html page. */
router.get('/sanpham2.html', function(req, res, next) {
  var connection = mysql.createConnection({
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: '1234',
    database: 'qlbh'
  });

  connection.connect();

  connection.query("SELECT * FROM `nsx`", function (error, rows) {
    if (error) throw error;
    console.log('The solution is: ', rows);
    var cate = {value: rows};
    for (c of cate.value) {
      console.log(`#${c.nsxID} || ${c.nsxName}`);
    }
    var dulieu = { danhsachsv : rows};

    res.render('sanpham2', { danhsach: dulieu });

    connection.end();
  });
  //res.render('sanpham2', { title: 'nha san xuat' });
});
/* GET checkout.html page. */
router.get('/calendar.html', function(req, res, next) {
  res.render('calendar', { title: 'lich' });
});

/* GET checkout.html page. */

router.get('/test.html', function(req, res, next) {


  var connection = mysql.createConnection({
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: '1234',
    database: 'qlbh'
  });

  connection.connect();

  connection.query("SELECT * FROM `categories`", function (error, rows) {
    if (error) throw error;
    console.log('The solution is: ', rows);
    var cate = {value: rows};
    for (c of cate.value) {
      console.log(`#${c.CatID} || ${c.CatName}`);
    }
    var dulieu = { danhsachsv : rows};

    //var dulieu = { danhsachsv : ["viet","nga","my","an do"]};

    res.render('test', { danhsach: dulieu });

    connection.end();
  });
});

/* GET checkout.html page. */

router.post('/them.html', function(req, res, next) {

  var connection = mysql.createConnection({
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: '1234',
    database: 'qlbh'
  });

  connection.connect();
  var ten = req.body.ten;
  var dt = req.body.dt;
  if( ten != null){
    var sql = "INSERT INTO `categories` (`CatID`, `CatName`) VALUES (NULL, '"+ ten +"')";
    connection.query(sql, function (error, rows) {
      if (error) throw error;
      console.log('The solution is: ', ten);


      connection.end();

    });
  }
  res.render('them', {data: 'text'});
});


router.get('/them.html', function(req, res, next) {
  res.render('them', { title: 'Final Project - Laptop Store Website - N4QPT' });
});

router.get('/xoa/:idxoa', function(req, res, next) {
  var id = req.params.idxoa;
  console.log("id can xoa la: " + id);

  var connection = mysql.createConnection({
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: '1234',
    database: 'qlbh'
  });

  connection.connect();

  var sql = "DELETE FROM `categories` WHERE `categories`.`CatID` = "+ id +"";
  connection.query(sql, function (error, rows) {
    if (error) throw error;
    console.log('The solution is: ', sql);


    connection.end();

  });
  res.redirect('/test.html');
});


router.get('/sua/:idsua', function(req, res, next) {
  var id = req.params.idsua;
  console.log("id can sua la: " + id);

  var connection = mysql.createConnection({
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: '1234',
    database: 'qlbh'
  });

  connection.connect();
  var name = 'Loại 7';
  var sql = "UPDATE `categories` SET `CatName` = '" + name + "' WHERE `categories`.`CatID` = "+ id +"";
  connection.query(sql, function (error, rows) {
    if (error) throw error;
    console.log('The solution is: ', sql);


    connection.end();

  });


  res.redirect('/test.html');
});

//xứ lí thêm loại sản phẩm
router.post('/sanpham1.html', function(req, res, next) {
  var connection = mysql.createConnection({
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: '1234',
    database: 'qlbh'
  });

  connection.connect();
  var ma = req.body.ma;
  var ten = req.body.ten;
  if( ten != null){
    var sql = "INSERT INTO `productcate` (`CatID`, `CatName`) VALUES (NULL, '"+ ten +"')";
    connection.query(sql, function (error, rows) {
      if (error) throw error;
      console.log('The solution is: ', ten);

    //load update
    

    connection.end();
  });
  }
  
  //res.render('sanpham1', { danhsach: dulieu1 });
  res.redirect('/sanpham1.html');

});

//xoa

router.get('/xoaloaisp/:idxoa', function(req, res, next) {
  var id = req.params.idxoa;
  console.log("id can xoa la: " + id);

  var connection = mysql.createConnection({
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: '1234',
    database: 'qlbh'
  });


  connection.connect();

  var sql = "DELETE FROM `productcate` WHERE `productcate`.`CatID` = "+ id +"";
  connection.query(sql, function (error, rows) {
    if (error) throw error;
    console.log('The solution is: ', sql);


    connection.end();

  });


  res.redirect('/sanpham1.html');
});

router.get('/xoansx/:idxoa', function(req, res, next) {
  var id = req.params.idxoa;
  console.log("id can xoa la: " + id);

  var connection = mysql.createConnection({
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: '1234',
    database: 'qlbh'
  });


  connection.connect();

  var sql = "DELETE FROM `nsx` WHERE `nsx`.`nsxID` = "+ id +"";
  connection.query(sql, function (error, rows) {
    if (error) throw error;
    console.log('The solution is: ', sql);


    connection.end();

  });


  res.redirect('/sanpham2.html');
});
//xứ lí thêm nsx
router.post('/sanpham2.html', function(req, res, next) {
  var connection = mysql.createConnection({
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: '1234',
    database: 'qlbh'
  });

  connection.connect();
  var ma = req.body.ma;
  var ten = req.body.ten;
  if( ten != null){
    var sql = "INSERT INTO `nsx` (`nsxID`, `nsxName`) VALUES (NULL, '"+ ten +"')";
    connection.query(sql, function (error, rows) {
      if (error) throw error;
      console.log('The solution is: ', ten);

    //load update
    

    connection.end();
    
  });
  }
  res.redirect('/sanpham2.html');
});
//sua loai sp
router.get('/sualoaisp/:idsua', function(req, res, next) {
  var id = req.params.idsua;
  var connection = mysql.createConnection({
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: '1234',
    database: 'qlbh'
  });

  connection.connect();
  var sql = "SELECT * FROM `productcate` WHERE `productcate`.`CatID` = "+ id +"";
  connection.query(sql, function (error, rows) {
    if (error) throw error;
    console.log('The solution is: ', rows);
    var cate = {value: rows};
    for (c of cate.value) {
      console.log(`#${c.CatID} || ${c.CatName}`);
    }
    var dulieu = { danhsachsv : rows};
    dulieu1 = { danhsachsv : rows};
  //var dulieu = { danhsachsv : ["viet","nga","my","an do"]};

  res.render('sua', { danhsach: dulieu });

  connection.end();
});
  //res.render('sua', { title: 'sua' });
});

router.post('/sualoaisp/:idsua', function(req, res, next) {
  var id = req.params.idsua;
  console.log("id can sua la: " + id);

  var connection = mysql.createConnection({
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: '1234',
    database: 'qlbh'
  });

  connection.connect();
  var name = req.body.ten;
  var sql = "UPDATE `productcate` SET `CatName` = '" + name + "' WHERE `productcate`.`CatID` = "+ id +"";
  connection.query(sql, function (error, rows) {
    if (error) throw error;
    console.log('The solution is: ', sql);


    connection.end();

  });


  res.redirect('/sanpham1.html');
});

//sua nsx
router.get('/suansx/:idsua', function(req, res, next) {
  var id = req.params.idsua;
  var connection = mysql.createConnection({
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: '1234',
    database: 'qlbh'
  });

  connection.connect();
  var sql = "SELECT * FROM `nsx` WHERE `nsx`.`nsxID` = "+ id +"";
  connection.query(sql, function (error, rows) {
    if (error) throw error;
    console.log('The solution is: ', rows);
    var cate = {value: rows};

    var dulieu = { danhsachsv : rows};
    dulieu1 = { danhsachsv : rows};
  //var dulieu = { danhsachsv : ["viet","nga","my","an do"]};

  res.render('sua2', { danhsach: dulieu });

  connection.end();
});
  //res.render('sua', { title: 'sua' });
});

router.post('/suansx/:idsua', function(req, res, next) {
  var id = req.params.idsua;
  console.log("id can sua la: " + id);

  var connection = mysql.createConnection({
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: '1234',
    database: 'qlbh'
  });

  connection.connect();
  var name = req.body.ten;
  var sql = "UPDATE `nsx` SET `nsxName` = '" + name + "' WHERE `nsx`.`nsxID` = "+ id +"";
  connection.query(sql, function (error, rows) {
    if (error) throw error;
    console.log('The solution is: ', sql);


    connection.end();

  });


  res.redirect('/sanpham2.html');
});
module.exports = router;
