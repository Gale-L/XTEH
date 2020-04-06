// 主页、分类、商品详情
var express = require('express')

var router = express.Router()

var index = require('../mysql/index.js')
var classify = require('../mysql/classify.js')
var goods = require('../mysql/goods.js')
var search = require('../mysql/search.js')

router.get('/', function (req, res) {

	index(function (err,categorys, goods) {
	if (err) {
		throw err
	}
	 res.render('index.html' ,{
	 	categorys: categorys,
	 	goods: goods,
	 	user: req.session.user
	 })

	})
	
})

router.get('/index', function (req, res) {

	index(function (err,categorys, goods) {
	if (err) {
		throw err
	}
	 res.render('index.html' ,{
	 	categorys: categorys,
	 	goods: goods,
	 	user: req.session.user
	 })
	})
	
})

router.get('/classify', function (req, res) {
	var page = {}
	var href = {}
	var classify_id = req.query.classify_id
	 page.current = req.query.page_cur 
	if (!classify_id) {
		classify_id = 0
	}
	if (!page.current) {
		page.current = 1
	}
	// console.log(classify_id ,page )

	classify(classify_id,  page.current - 1, function (err,categorys, goods, goods_size) {
	if (err) {
		throw err
	}
	page.total = Math.ceil(goods_size/12);

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
	href.hrefs = []
	page.pages=[]
	var j = 0;
	for(var i = page.start; i<=page.end;i++){
		page.pages[j] = page.start+j;
		href.hrefs[j]  = 'classify?classify_id='+classify_id+'&&page_cur='+page.pages[j]
		j++;
		
	}
	href.previous = 'classify?classify_id='+classify_id+'&&page_cur='+(page.current - 1)
	href.next = 'classify?classify_id='+classify_id+'&&page_cur='+(page.current - 0 + 1)

	res. render('classify.html',{
	 	categorys: categorys,
	 	goods: goods,
	 	page: page,
	 	category_id: classify_id,
	 	href: href,
	 	user: req.session.user
	 })
	//  console.log(goods)
	})
})

router.get('/goods', function (req, res) {

	var product_id = req.query.product_id

	goods(product_id,function (err, product, goods) {
	if (err) {
		throw err
	}
	console.log(product)
	 res. render('goods.html', {
	 	product : product,
	 	goods : goods,
	 	user: req.session.user 
	 })

	})
})



router.get('/search', function (req, res) {
	var page = {}
	var href = {}
	var search_ = req.query.search
	 page.current = req.query.page_cur 

	if (!page.current) {
		page.current = 1
	}
	// console.log(classify_id ,page )

	search(search_,  page.current - 1, function (err,categorys, goods, goods_size) {
	if (err) {
		throw err
	}
	page.total = Math.ceil(goods_size/12);

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
	page.pages = []
	href.hrefs = []
	var j = 0;
	for(var i = page.start; i<=page.end;i++){
		page.pages[j] = page.start+j;
		href.hrefs[j]  = 'search?search='+search_+'&&page_cur='+page.pages[j]
		j++;
	}
	href.previous = 'search?search='+search_+'&&page_cur='+(page.current - 1)
	href.next = 'search?search='+search_+'&&page_cur='+(page.current - 0 + 1)
	
	res. render('classify.html',{
	 	categorys: categorys,
	 	goods: goods,
	 	page: page,
	 	search: search_,
	 	href: href
	 	
	 })
	//  console.log(goods)
	})
})

module.exports = router