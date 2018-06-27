var db = require('../fn/db');

exports.loadAll = () => {
    var sql = 'SELECT * FROM `userhistory`,`product`,`users` WHERE product.ProID = userhistory.f_ProID AND userhistory.f_username = users.f_Username';
    return db.load(sql);
}