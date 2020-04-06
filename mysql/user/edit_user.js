var db = require('../connect.js')

 function edit_user(user, callback){
 	if (user.birthday) {
	var sql = 'UPDATE t_user SET username ="'+user.username +'",`password` = "'+user.password +'",birthday = "'+
	user.birthday+ '",phoneNum = "'+user.phoneNum+ '",identityNum = "'+ user.identityNum +'",sex = "'+user.sex+'" WHERE id = '+user.id;
 	}
	else {
		var sql = 'UPDATE t_user SET username ="'+user.username +'",`password` = "'+user.password + '",phoneNum = "'+user.phoneNum+ '",identityNum = "'+ user.identityNum +'",sex = "'+user.sex+'" WHERE id = '+user.id;
	}

		db.query(sql, function(err, results, fields){
    if (err) {
    	callback(err, null);
        throw err
    }
    callback(null, true)
	}); 
}

module.exports =  edit_user