
var db = require('../fn/db');

exports.loadAll = () => {
    var sql = 'SELECT * FROM billinfo;';
    return db.load(sql);
}



exports.loadAllsdt = (sdt) => {
    var sql = "SELECT * FROM billinfo where sdt = '"+ sdt+"';";
    return db.load(sql);
}

exports.add = (SDT, id, num) => {
    
    var sql = "INSERT INTO `qlbh`.`billinfo` (`id`, `sdt`, `ProID`, `num`) VALUES (NULL, '"+SDT+"', '"+id+"', '"+num+"');";
    return db.save(sql);
}