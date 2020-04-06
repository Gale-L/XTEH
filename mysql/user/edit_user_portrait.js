var db = require('../connect.js')

 function edit_user_portrait(user, callback){
	var sql = 'UPDATE t_user SET portrait ="'+user.portrait +'" WHERE id = '+user.id;
	db.query(sql, function(err, results, fields){
    if (err) {
    	callback(err, null);
        throw error
    }
    callback(null, true)
	});
}

module.exports =  edit_user_portrait