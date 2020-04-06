var db = require('../connect.js')

function getTime(){
    var date = new Date();
    var year = date.getFullYear();
    var month = date.getMonth()+1;
    var day = date.getDate();
    var hour = date.getHours();
    var minute = date.getMinutes();
    var second = date.getSeconds();
    var thisTime = year + '-' +month+'-'+day+' '+hour+':'+minute+':'+second
    return thisTime

}

function pSQL(sql){
    return new Promise(function (resolve, reject) {
    db.query(sql, function(err, results, fields){
        if (err) {
            reject(err)
        } else {
            resolve(results)
        }
        })
    })
} 

function sell(product, callback){
    var date = getTime()
    if (!product.productPrice) product.productPrice = 0
    if (!product.id){
        pSQL('INSERT INTO t_product(productName, productPrice, cateId,productDesc,launchTime,userId) VALUE ("'
            +product.productName+ '","'+product.productPrice+ '",'+product.cateId+',"'+product.productDesc+ '","'+date+'",'+product.userId + ') ')
     .then(function (data) {
        // console.log(data.insertId)
        if(!product.imgPath || product.imgPath.length==0) {
            callback(null)
        }
        else {
            // INSERT INTO t_images(imgPath, productId) SELECT "111",2 UNION SELECT "121",1
            var sql = 'INSERT INTO t_images(imgPath, productId) SELECT "'
            for (var i = 0; i < product.imgPath.length - 1; i++) {
                sql = sql + product.imgPath[i]+ '",' + data.insertId + ' UNION SELECT "'
            }
            sql = sql + product.imgPath[product.imgPath.length-1] + '",' + data.insertId
        
           return  pSQL(sql)
        }
     })
     .then(function (data) {
            callback(null)
     })
    }else{
        pSQL('UPDATE t_product SET productName ="'+product.productName+'",productPrice="'+product.productPrice+
         '",cateId = '+product.cateId+',productDesc = "'+product.productDesc+ '" WHERE id = '+product.id)

     .then(function (data) {
        callback(null)
     })
    }
    
    
}

module.exports =  sell