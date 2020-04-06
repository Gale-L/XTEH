var db = require('./connect.js')

var goods = []
var categorys = []
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

function search(search_,page, callback){


    

    pSQL('SELECT * from t_category  ORDER BY id')
     .then(function (data) {
        categorys = data
        return    pSQL('SELECT * FROM (select  t_product.*,t_images.imgPath  from t_product   LEFT JOIN '+
            't_images on t_product.id=t_images.productId  GROUP BY t_product.id )as a WHERE a.productName LIKE "%'+
            search_+'%" ORDER BY launchTime DESC  LIMIT ' + page*12 + ',12')
     })
     .then(function (data) {
        goods = data
       
        return pSQL('SELECT count(*) FROM t_product WHERE productName LIKE "%'+search_ +'%"')
    })
     .then(function (data) {
        for (var key in data[0])
        {
            goods_size = data[0][key]
            break;
        }
        console.log(goods_size)
        callback(null, categorys, goods, goods_size)

     })
    
}

module.exports =  search