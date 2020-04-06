var db = {};
var mysql      = require('mysql');
//1.创建连接
var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : 'root',
  database : 'secondhandtradingplatform' ,//数据库名称
  'dateStrings': true 
});
 
 // 2.连接数据库
connection.connect();
 
 // 3.执行数据操作
// connection.query('INSERT INTO user VALUES(null,"admin2","123456")', function (error, results, fields) {
//   if (error) throw error;
//   console.log('The solution is: ', results);
// });
db.query = function(sql, callback){
	if (!sql) {
		callback();
		return;
	}

		connection.query(sql, function(err, results, fields) {
	  if (err) {
	    // console.log(err);
	    callback(err, null);
	    
	  }
 		else 
	  callback(null, results, fields);
		});
	
	
	
}

//  // 4.关闭连接
// connection.end();

module.exports = db;