<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Watches an E-Commerce online Shopping Category Flat Bootstrap Responsive Website Template| Brands :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Watches Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="${pageContext.request.contextPath}/assets/css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<!-- Custom Theme files -->
<link href="${pageContext.request.contextPath}/assets/css/style.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<!--webfont-->
<link href='//fonts.googleapis.com/css?family=PT+Sans+Narrow:400,700' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Dorsa' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery-1.11.1.min.js"></script>
<!-- start menu -->
<link href="${pageContext.request.contextPath}/assets/css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
<script src="${pageContext.request.contextPath}/assets/js/jquery.easydropdown.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/simpleCart.min.js"> </script>
</head>
<body>
	<div class="men_banner">
   	  <div class="container">
   	  	<div class="header_top">
   	  	   <div class="header_top_left">
	  	      <div class="box_11"><a href="checkout.html">
		      <h4><p>购物车: <span class="simpleCart_total"></span> (<span id="simpleCart_quantity" class="simpleCart_quantity"></span> items)</p><img src="${pageContext.request.contextPath}/assets/images/bag.png" alt=""/><div class="clearfix"> </div></h4>
		      </a></div>
	          <p class="empty"><a href="javascript:;" class="simpleCart_empty">空购物车</a></p>
	          <div class="clearfix"> </div>
	       </div>
           <div class="header_top_right">
		  	 <div class="lang_list">
				<select tabindex="4" class="dropdown">
					<option value="" class="label" value="">$ 我们</option>
					<option value="1">美元</option>
					<option value="2">欧元</option>
				</select>
			 </div>
			 <ul class="header_user_info">
			  <a class="login" href="${pageContext.request.contextPath}/views/login.jsp">
				<i class="user"> </i> 
				<li class="user_desc">${loginUser.uname }</li>
			  </a>
			  <div class="clearfix"> </div>
		     </ul>
		    <!-- start search-->
				<div class="search-box">
				   <div id="sb-search" class="sb-search">
					  <form>
						 <input class="sb-search-input" placeholder="Enter your search term..." type="search" name="search" id="search">
						 <input class="sb-search-submit" type="submit" value="">
						 <span class="sb-icon-search"> </span>
					  </form>
				    </div>
				 </div>
				 <!----search-scripts---->
				 <script src="${pageContext.request.contextPath}/assets/js/classie1.js"></script>
				 <script src="${pageContext.request.contextPath}/assets/js/uisearch.js"></script>
				   <script>
					 new UISearch( document.getElementById( 'sb-search' ) );
				   </script>
					<!----//search-scripts---->
		            <div class="clearfix"> </div>
			 </div>
		     <div class="clearfix"> </div>
	   </div>
   	  <div class="header_bottom">
	   <div class="logo">
		  <h1><a href="index.jsp"><span class="m_1">W</span>atches</a></h1>
	   </div>
	   <div class="menu">
	     <ul class="megamenu skyblue">
			<li><a class="color2" href="${pageContext.request.contextPath }/getProducts">男士</a>
				<div class="megapanel">
					<div class="row">
						<div class="col1">
							<div class="h_nav">
								<h4>男士</h4>
								<ul>
									<li><a href="men.html">手表</a></li>
									<li><a href="men.html">手表</a></li>
									<li><a href="men.html">开拓者</a></li>
									<li><a href="men.html">西装</a></li>
									<li><a href="men.html">长裤</a></li>
									<li><a href="men.html">牛仔裤</a></li>
									<li><a href="men.html">上衣</a></li>
									<li><a href="men.html">运动衫和帽衫</a></li>
									<li><a href="men.html">游泳衣</a></li>
									<li><a href="men.html">配饰</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>女士</h4>
								<ul>
									<li><a href="men.html">手表</a></li>
									<li><a href="men.html">外衣</a></li>
									<li><a href="men.html">洋装</a></li>
									<li><a href="men.html">手袋</a></li>
									<li><a href="men.html">长裤</a></li>
									<li><a href="men.html">牛仔裤</a></li>
									<li><a href="men.html">上衣</a></li>
									<li><a href="men.html">鞋类</a></li>
									<li><a href="men.html">大衣</a></li>
									<li><a href="men.html">配饰</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col2">
							<div class="h_nav">
								<h4>发展趋势</h4>
								<ul>
									<li class>
										<div class="p_left">
										  <img src="${pageContext.request.contextPath}/assets/images/p1.jpg" class="img-responsive" alt=""/>
										</div>
										<div class="p_right">
											<h4><a href="#">牛仔衬衫</a></h4>
											<span class="item-cat"><small><a href="#">手表</a></small></span>
											<span class="price">29.99 $</span>
										</div>
										<div class="clearfix"> </div>
									</li>
									<li>
										<div class="p_left">
										  <img src="${pageContext.request.contextPath}/assets/images/p2.jpg" class="img-responsive" alt=""/>
										</div>
										<div class="p_right">
											<h4><a href="#">牛仔衬衫</a></h4>
											<span class="item-cat"><small><a href="#">手表</a></small></span>
											<span class="price">29.99 $</span>
										</div>
										<div class="clearfix"> </div>
									</li>
									<li>
										<div class="p_left">
										  <img src="${pageContext.request.contextPath}/assets/images/p3.jpg" class="img-responsive" alt=""/>
										</div>
										<div class="p_right">
											<h4><a href="#">牛仔衬衫</a></h4>
											<span class="item-cat"><small><a href="#">手表</a></small></span>
											<span class="price">29.99 $</span>
										</div>
										<div class="clearfix"> </div>
									</li>
								</ul>	
							</div>												
						</div>
					  </div>
					</div>
			</li>
			<li><a class="color4" href="${pageContext.request.contextPath }/getProducts">女士</a>
				<div class="megapanel">
					<div class="row">
						<div class="col1">
							<div class="h_nav">
								<h4>男士</h4>
								<ul>
									<li><a href="${pageContext.request.contextPath }/getProducts">手表</a></li>
									<li><a href="${pageContext.request.contextPath }/getProducts">开拓者</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>女士</h4>
								<ul>
									<li><a href="men.html">手表</a></li>
									<li><a href="men.html">外衣</a></li>
									<li><a href="men.html">洋装</a></li>
									<li><a href="men.html">手袋</a></li>
									<li><a href="men.html">长裤</a></li>
									<li><a href="men.html">牛仔裤</a></li>
									<li><a href="men.html">上衣</a></li>
									<li><a href="men.html">鞋类</a></li>
									<li><a href="men.html">大衣</a></li>
									<li><a href="men.html">配饰</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col2">
							<div class="h_nav">
								<h4>发展趋势</h4>
								<ul>
									<li class>
										<div class="p_left">
										  <img src="${pageContext.request.contextPath}/assets/images/p1.jpg" class="img-responsive" alt=""/>
										</div>
										<div class="p_right">
											<h4><a href="#">牛仔衬衫</a></h4>
											<span class="item-cat"><small><a href="#">手表</a></small></span>
											<span class="price">29.99 $</span>
										</div>
										<div class="clearfix"> </div>
									</li>
									<li>
										<div class="p_left">
										  <img src="${pageContext.request.contextPath}/assets/images/p2.jpg" class="img-responsive" alt=""/>
										</div>
										<div class="p_right">
											<h4><a href="#">牛仔衬衫</a></h4>
											<span class="item-cat"><small><a href="#">手表</a></small></span>
											<span class="price">29.99 $</span>
										</div>
										<div class="clearfix"> </div>
									</li>
									<li>
										<div class="p_left">
										  <img src="${pageContext.request.contextPath}/assets/images/p3.jpg" class="img-responsive" alt=""/>
										</div>
										<div class="p_right">
											<h4><a href="#">牛仔衬衫</a></h4>
											<span class="item-cat"><small><a href="#">手表</a></small></span>
											<span class="price">29.99 $</span>
										</div>
										<div class="clearfix"> </div>
									</li>
								</ul>	
							</div>												
						</div>
					  </div>
					</div>
				</li>				
				<li class="active grid"><a class="color10" href="${pageContext.request.contextPath}/getBrandList">品牌</a></li>
				<li><a class="color3" href="${pageContext.request.contextPath}/views/index.jsp">特卖</a></li>
				<li><a class="color7" href="${pageContext.request.contextPath}/getNewList">新闻</a></li>
				<div class="clearfix"> </div>
			</ul>
			</div>
	        <div class="clearfix"> </div>
	    </div>
	   </div>
   </div>
   <div class="men">
   	<div class="container">
      <div class="col-md-9 single_top">
      	 <h1 class="page-heading product-listing">
			新闻
		    
         </h1>
          <div class="brand_box">
          	<c:forEach items="${pageInfo.list }" var="news">    	
	         <div class="left-side col-xs-12 col-sm-3">
				 <img src="${news.nimg}" alt=""/>
			 </div>
		     <div class="middle-side col-xs-18 col-sm-8">
		     	<h4>${news.title }</h4>
		     	<p>${news.content }</p>
			 </div>
			 <div class="clearfix"> </div>
			 </c:forEach>
		  </div>
		</div>
		<div class="col-md-3 tabs">
			<h3 class="m_1">相关新闻</h3>
	      <ul class="product">
	      	<li class="product_img"><img src="${pageContext.request.contextPath}/assets/images/m5.jpg" class="img-responsive" alt=""/></li>
	      	<li class="product_desc">
	      		<h4><a href="#">宝玑</a></h4>
	      		<p class="single_price">$66.30</p>
	      		<a href="#" class="link-cart">查看详情</a>
	        </li>
	      	<div class="clearfix"> </div>
	      </ul>
	      <ul class="product">
	      	<li class="product_img"><img src="${pageContext.request.contextPath}/assets/images/m6.jpg" class="img-responsive" alt=""/></li>
	      	<li class="product_desc">
	      		<h4><a href="#">万宝龙</a></h4>
	      		<p class="single_price">$66.30</p>
	      		<a href="#" class="link-cart">查看详情</a>
	        </li>
	      	<div class="clearfix"> </div>
	      </ul>
	      <ul class="product">
	      	<li class="product_img"><img src="${pageContext.request.contextPath}/assets/images/m2.jpg" class="img-responsive" alt=""/></li>
	      	<li class="product_desc">
	      		<h4><a href="#">泰格豪雅</a></h4>
	      		<p class="single_price">$66.30</p>
	      		<a href="#" class="link-cart">查看详情</a>
	        </li>
	      	<div class="clearfix"> </div>
	      </ul>
	      <ul class="product">
	      	<li class="product_img"><img src="${pageContext.request.contextPath}/assets/images/m3.jpg" class="img-responsive" alt=""/></li>
	      	<li class="product_desc">
	      		<h4><a href="#">宇舶</a></h4>
	      		<p class="single_price">$66.30</p>
	      		<a href="#" class="link-cart">查看详情</a>
	        </li>
	      	<div class="clearfix"> </div>
	      </ul>
        </div>
     <div class="clearfix"> </div>
	</div>
   </div>
   <div class="footer">
   	 <div class="container">
   	 	<div class="newsletter">
			<h3>通讯</h3>
			<p>Lorem Ipsum只是印刷和排版行业的伪文本。Lorem Ipsum一直是行业标准</p>
			<form>
			  <input type="text" value="" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='';}">
			  <input type="submit" value="订阅">
			</form>
		</div>
   		<div class="cssmenu">
		   <ul>
			<li class="active"><a href="#">隐私</a></li>
			<li><a href="#">条款</a></li>
			<li><a href="#">店铺</a></li>
			<li><a href="#">关于</a></li>
			<li><a href="contact.jsp">联系</a></li>
		  </ul>
		</div>
		<ul class="social">
			<li><a href=""> <i class="instagram"> </i> </a></li>
			<li><a href=""><i class="fb"> </i> </a></li>
			<li><a href=""><i class="tw"> </i> </a></li>
	    </ul>
	    <div class="clearfix"></div>
	    <div class="copy">
           <p> &copy; 2015手表。保留所有权利| 由 <a href="http://w3layouts.com/" target="_blank">W3layouts</a>设计</p>
	    </div>
   	</div>
   </div>
</body>
</html>		