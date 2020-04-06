// 用户界面子页面、我的商品、发布二货、个人信息
var express = require('express')
var path = require('path')
var router = express.Router()

var user_goods = require('../mysql/user/user_goods.js')
var delete_ = require('../mysql/user/delete.js')
var search_user = require('../mysql/user/search_user.js')
var edit_user = require('../mysql/user/edit_user.js')
var search_product = require('../mysql/user/search_product.js')
var user_sell = require('../mysql/user/user_sell.js')
var edit_user_portrait = require('../mysql/user/edit_user_portrait')

var upload = require('./pic.js')



router.get('/user', function (req, res) {
	if (!req.session.user) {
		res.render('login.html')
	}
	else{
	var iframe = req.query.iframe
	if (!iframe) {
		iframe = '/user_goods'
	}
	res.render('user.html',{
		iframe: iframe,
	 	user: req.session.user
	})}
})


router.get('/user_goods', function (req, res) {

	var page = {}
	page.current = req.query.page_cur 
	if (!page.current) {
		page.current = 1
	}
	user_goods(req.session.user.id, page.current - 1 , function (err, goods, goods_size) {
		if (err) {
		throw err
		}
		page.total = Math.ceil(goods_size/4);
		if(page.total <= 7){
		page.start = 1;
		page.end = page.total;
		} else {
		if (page.current <= 4){
			page.start = 1;
			page.end = 7;
		}
		else {
			page.start = page.current - 3;
			page.end = page.current + 3;
			if(page.end > page.total) {
				page.start -= page.end - page.total
				page.end = page.total
			}
		}
		}
	page.pages=[]
	var j = 0;
	for(var i = page.start; i<=page.end;i++){
		page.pages[j] = page.start+j;
		j++;
		
	}
		res.render('user_goods.html', {
			goods: goods,
			goods_size : goods_size,
			page: page,
	 		user: req.session.user
		})
	})
})

router.get('/delete', function (req, res) {
	var product_id = req.query.product_id;
	var user_id = req.query.user_id;
	var page_cur = req.query.page_cur;
	delete_(product_id,function (err, result) {
		if(err) {
			throw err
		}
		 res.redirect('/user_goods?user_id='+user_id+'&page='+page_cur)
	})	

})


router.get('/user_sell', function (req, res) {
	var product_id = req.query.product_id
	// console.log(product_id)
	// if (product_id) {
		search_product(product_id, function (err, categorys, product) {
			// console.log(categorys)
		res.render('user_sell.html',{
			categorys : categorys,
			product : product,
	 		user: req.session.user
		}) 

		})
	// } else {

	// res.render('user_sell.html')
	// }
	
	
})



router.get('/user_personal_information', function (req, res) {

	res.render('user_personal_information.html', {
		user: req.session.user
	})

})

router.post('/edit_user', function (req, res) {
	
	var user = JSON.stringify(req.body)
	user = JSON.parse(user)
	// console.log(user)
	edit_user(user, function (err, result){
		req.session.user = user
		res.redirect('/user_personal_information')
	})

})

// router.post('/sell', function (req, res) {
	
// 	var product = JSON.stringify(req.body)
// 	product = JSON.parse(product)
// 	product.userId = req.session.user.id
// 	console.log(product)
// 	user_sell(product, function (err){
// 		res.redirect('/user_goods')
// 	})

// })

router.post('/sell', upload.upload2.array('file',5), function (req, res, next) {
    //图片已经被放入到服务器里,且req也已经被upload中间件给处理好了（加上了file等信息）
    //线上的也就是服务器中的图片的绝对地址
    // console.log(req.files)
    // console.log(req.body)
    var product = JSON.stringify(req.body)
	product = JSON.parse(product)
	product.userId = req.session.user.id
    product.imgPath = []
    for(var i = 0;i<req.files.length;i++){
    	product.imgPath[i]='/public/img/goods/'+req.files[i].filename
    }
    // console.log(pics_url)

	console.log(product)
	user_sell(product, function (err){
	res.json({
        code : 200
    })
	})
});


//接收上传图片请求的接口
router.post('/update_portrait', upload.upload1.single('file'), function (req, res, next) {
    //图片已经被放入到服务器里,且req也已经被upload中间件给处理好了（加上了file等信息）
    //线上的也就是服务器中的图片的绝对地址
    
    var url = req.file.destination+"/"+req.file.filename
    console.log(url)
    req.session.user.portrait = url
    edit_user_portrait(req.session.user,function (err, result) {
    	// console.log('修改头像成功')
    })
    res.json({
        code : 200,
        data : url
    })
});
module.exports = router