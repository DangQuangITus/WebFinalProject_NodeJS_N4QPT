
var db = require('../fn/db');

exports.loadAll = () => {
    var sql = 'SELECT * FROM billinfo;';
    return db.load(sql);
}



exports.loadAllsdt = (sdt, date) => {
    var sql = "SELECT * FROM billinfo where sdt = '"+ sdt+"' and date ='"+date+"';";
    return db.load(sql);
}

exports.add = (SDT, id, num, date) => {
    
    var sql = "INSERT INTO `qlbh`.`billinfo` (`id`, `sdt`, `ProID`, `num`, `date`) VALUES (NULL, '"+SDT+"', '"+id+"', '"+num+"', '"+date+"');";
    return db.save(sql);
}