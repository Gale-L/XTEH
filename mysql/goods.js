var db = require('./connect.js')
var product = {}
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

function goods_sql(product_id,callback){

    pSQL('select t_product.*,t_category.cateName from t_product,t_category where t_product.id = '+product_id)
    .then(function (data) {
        product = data[0]
        return pSQL('select imgPath from t_images WHERE productId ='+ product_id)
    })
    .then(function (data) {
        product.imgPath = []
        for(var i = 0; i < data.length; i++) {
            product.imgPath[i] = data[i].imgPath
        }
        return pSQL('select * from (select  t_product.*,t_images.imgPath  from t_product   LEFT JOIN t_images on t_product.id=t_images.productId  GROUP BY t_product.id )as a where cateId = '+product.cateId+' ORDER BY launchTime DESC LIMIT 0,5')
    
    })
    .then(function (data) {
        goods = data
        return pSQL('select t_product.id,t_user.phoneNum,t_user.username,t_category.cateName from t_product,t_user,t_category where t_product.id ='
            +product_id+ ' and t_product.userId = t_user.id and t_category.id = t_product.cateId')
    })
    .then(function (data) {

        product.userName = data[0].username
        product.cateName = data[0].cateName
         product.phoneNum = data[0].phoneNum
         callback(null, product, goods)
    })
}

module.exports =  goods_sql