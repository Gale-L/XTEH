var db = require('./connect.js')

var ads = []
var categorys = []
var goods = []

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

function index( callback){
	pSQL('SELECT * from t_category  ORDER BY id')
     .then(function (data) {
        categorys = data
        // console.log(data)
        return pSQL(' SELECT * FROM (select  t_product.*,t_images.imgPath  from t_product   LEFT JOIN t_images'+
            ' on t_product.id=t_images.productId  GROUP BY t_product.id )as a  ORDER BY launchTime DESC  LIMIT 0,4 ')  
    })
    .then(function (data) {
        goods[0] = data
        // console.log(data)
        return pSQL(' SELECT * from (select  t_product.*,t_images.imgPath  from t_product LEFT JOIN t_images on '+
            ' t_product.id=t_images.productId  GROUP BY t_product.id )as a where a.cateId ='+categorys[0].id+' LIMIT 0,4 ')  
    })
    .then(function (data) {
        goods[1] = data
        // console.log(data)
        return pSQL(' SELECT * from (select  t_product.*,t_images.imgPath  from t_product LEFT JOIN t_images on '+
            ' t_product.id=t_images.productId  GROUP BY t_product.id )as a where a.cateId ='+categorys[1].id+' LIMIT 0,4 ')  
     
    })
    .then(function (data) {
         goods[2] = data
        // console.log(data)
        return pSQL(' SELECT * from (select  t_product.*,t_images.imgPath  from t_product LEFT JOIN t_images on '+
            ' t_product.id=t_images.productId  GROUP BY t_product.id )as a where a.cateId ='+categorys[2].id+' LIMIT 0,4 ')  
     
    })
    .then(function (data) {
         goods[3] = data
        // console.log(data)
         return pSQL(' SELECT * from (select  t_product.*,t_images.imgPath  from t_product LEFT JOIN t_images on '+
            ' t_product.id=t_images.productId  GROUP BY t_product.id )as a where a.cateId ='+categorys[3].id+' LIMIT 0,4 ')  
    
    })
    .then(function (data) {
        goods[4] = data
        // console.log(data)
        callback(null, categorys, goods)
    })
}

module.exports =  index