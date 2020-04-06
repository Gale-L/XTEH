var db = require('../connect.js')

 function search_user(user_id, callback){
	var sql = 'select * from t_user WHERE id ='+user_id;
	db.query(sql, function(err, results, fields){
    if (err) {
    	callback(err, null);
        throw error
    }
    callback(null, results[0])
	});
}

module.exports =  search_user