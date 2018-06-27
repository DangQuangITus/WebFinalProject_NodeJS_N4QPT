var db = require('../fn/db');

exports.update = user => {
   var sql = "UPDATE `users` SET `f_Username`='"+user.username+"', `f_Password`='"+user.password+"', `f_Name`='"+user.name+"', `f_Email`='"+user.email+"', `f_DOB`='"+user.dob+"' WHERE `f_Id`='"+user.Id+"';";
     return db.save(sql);
}