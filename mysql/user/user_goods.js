var db = require('../connect.js')

var goods = []
var goods_size = 0

function pSQL(sql){
    return new Promise(function (resolve, reject) {
    db.query(sql, function(err, results, fields){
        if (err) {
            // 把容器的Pending状态变为Rejected
            reject(err)
        } else {
            // 把容器的Pending状态变为Resolved成功
            resolve(results)
        }
        })
    })
} 

function user_goods(user_id, page, callback){
    pSQL('select * from (select  t_product.*,t_images.imgPath  from t_product   LEFT JOIN '+
' t_images on t_product.id=t_images.productId  GROUP BY t_product.id ) as a WHERE a.userId ='+user_id+' LIMIT '+page*4 + ',4')
     .then(function (data) {
        goods = data
        return    pSQL('SELECT count(*) from t_product where userId ='+user_id)
     })
     .then(function (data) {
        for (var key in data[0])
        {
            goods_size = data[0][key]
            break;
        }
        callback(null, goods, goods_size)

     })
    
}

module.exports =  user_goods