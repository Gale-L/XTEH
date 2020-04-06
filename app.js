var express = require('express')
var path = require('path')
var bodyParser = require('body-parser')
var app = express()
var session = require('express-session')
const fs = require('fs')
// var multer = require('multer')


var router_session = require('./routers/session.js')
var router_main = require('./routers/main.js')
var router_user = require('./routers/user.js')

app.use('/public/',express.static(path.join(__dirname, './public/')))
app.use('/node_modules/',express.static(path.join(__dirname, './node_modules/')))

app.engine('html', require('express-art-template'))
app.set('views', path.join(__dirname, './views/'))
 
app.use(bodyParser.urlencoded({ extended:false}))
app.use(bodyParser.json()) 

// 在Express这个框架中，默认不支持session和cookie
// 但是我们可以使用第三方中间件：express-session 来解决
// 1.npm install express-session
// 2.配置(一定要在配置路由之前)
// 3.使用
// 
app.use(session({
	secret: 'keyboard cat',
	resave: true,
	saveUninitialized: true
}))


// 把路由挂载进来
app.use(router_session)
app.use(router_main)
app.use(router_user)

app.listen(5000, function () {
	console.log('running...')
})

// 出错后仍然不会停止node进程
process.on('uncaughtException', function (err) {
    console.log('Caught exception: ' + err);
});