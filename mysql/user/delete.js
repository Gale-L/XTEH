var db = require('../connect.js')

 function delete_(product_id, callback){
	var sql = 'DELETE FROM t_product WHERE id = '+product_id;
	db.query(sql, function(err, results, fields){
		console.log('删除id'+product_id)
    if (err) {
    	callback(err, null);
        throw error
    }
    
    callback(null, true)
	});
}

module.exports =  delete_