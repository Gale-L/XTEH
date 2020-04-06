var db = require('./connect.js')

 function login(username, password, callback){
	var sql = 'SELECT * from t_user where username="'+username+'" and password ="'+password+'" ';
	db.query(sql, function(err, results, fields){
    if (err) {
    	callback(err, null);
        throw error
    }
    console.log(username+ password);
    
    callback(null, results.length, results[0])
	});
}

module.exports =  login