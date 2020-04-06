var db = require('../connect.js')


var categorys = []
var product = {}


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

function search_product(product_id, callback){
    if (product_id) {
         pSQL('SELECT * from t_category  ORDER BY id')
     .then(function (data) {
        categorys = data
           return pSQL('SELECT * from t_product where id = '+product_id)
    })
    .then(function (data) {
     product = data[0]
        return pSQL('SELECT imgPath from t_images where productId ='+ product_id)  
    })
    .then(function (data) {
        if(product){
        product.imgPath = []
        for(var i = 0; i < data.length; i++) {
            product.imgPath[i] = data[i].imgPath
        }
        // console.log(data)
    }
        callback(null, categorys, product)
    })

    }
    else {
         pSQL('SELECT * from t_category  ORDER BY id')
        .then(function (data) {
        categorys = data
           callback(null, categorys, null) 
    })
    }

   
}

module.exports =  search_product