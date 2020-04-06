var express = require('express')
var app = express()
var multer = require('multer')

// 配置图片上传路径

//配置diskStorage来控制文件存储的位置以及文件名字等
var storage = multer.diskStorage({
    //确定图片存储的位置
    destination: function (req, file, cb){
        cb(null, './public/img/user')
    },
// ![](http://images2017.cnblogs.com/blog/1283058/201802/1283058-20180201154342296-515041615.png)
//     //确定图片存储时的名字,注意，如果使用原名，可能会造成再次上传同一张图片的时候的冲突
    filename: function (req, file, cb){
        cb(null, Date.now()+file.originalname)
    }
});
//生成的专门处理上传的一个工具，可以传入storage、limits等配置
// var upload = multer({storage: storage});

//设置multer upload
var upload1 = multer({storage: storage})


//配置diskStorage来控制文件存储的位置以及文件名字等
var storage2 = multer.diskStorage({
    //确定图片存储的位置
    destination: function (req, file, cb){
        cb(null, './public/img/goods')
    },
// ![](http://images2017.cnblogs.com/blog/1283058/201802/1283058-20180201154342296-515041615.png)
//     //确定图片存储时的名字,注意，如果使用原名，可能会造成再次上传同一张图片的时候的冲突
    filename: function (req, file, cb){
        cb(null, Date.now()+file.originalname)
    }
});
//生成的专门处理上传的一个工具，可以传入storage、limits等配置
// var upload = multer({storage: storage});

//设置multer upload
var upload2 = multer({storage: storage2})

exports.upload1 = upload1
exports.upload2 = upload2