var db = require('../fn/db');

// Thiếu cái truy vấn f_DOB = user.birthday trong này.
exports.update = user => {
    var sql = `update users set f_Name = '${user.name}', f_Email = '${user.email}'  where f_Username = '${user.username}'`;
    return db.load(sql);
}