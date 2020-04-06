// 登录、注册、退出
var express = require('express')

var router = express.Router()

var login = require('../mysql/login.js')
var logon = require('../mysql/logon.js') 
var index = require('../mysql/index.js')



router.get('/login', function (req, res) {
	res. render('login.html')
})
router.post('/login', function (req, res) {
	var user = JSON.stringify(req.body);
	user = JSON.parse(user);
	
	login(user.user_name,user.password,function (err, is_has, user) {
	if (err) {
		throw err
	}
	if (is_has === 0) {
		res. render('login.html')
	}	
	else {
		req.session.user = user //保存用户到session
		console.log(req.session.user)
		res.redirect('/index') //重定向到首页
	} 
	})
})

router.get('/logon', function (req, res) {
	res. render('logon.html')

})
router.post('/logon', function (req, res) {
	var user = JSON.stringify(req.body);
	user = JSON.parse(user);
	logon(user,function (err, results, fields) {
	if (err) {
		throw err
	}
	 res. render('login.html')

	})
})
router.get('/exit', function (req, res) {
	req.session.user = null
	res. render('login.html')
}) 

module.exports = router