var db = require('./connect.js')

 function logon(user, callback){
	var sql = 'INSERT INTO t_user(username,password,phoneNum) VALUE ("' +
	 user.user_name + '", "' + user.password + '", "' + user.phone + '")';
	db.query(sql, function(err, results, fields){
    if (err) {
    	callback(err, null);
        throw error
    }
    // console.log('用户数量 : ', results);
    
    callback(null, results, fields)
	});
}

module.exports =  logon