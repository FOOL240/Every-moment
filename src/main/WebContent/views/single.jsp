<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
<head>
<title>Every Moment</title>
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
<script src="${pageContext.request.contextPath}/assets/js/easyResponsiveTabs.js" type="text/javascript"></script>
		    <script type="text/javascript">
			    $(document).ready(function () {
			        $('#horizontalTab').easyResponsiveTabs({
			            type: 'default', //Types: default, vertical, accordion           
			            width: 'auto', //auto or any width like 600px
			            fit: true   // 100% fit in a container
			        });
			    });
            </script>	
<script src="${pageContext.request.contextPath}/assets/js/simpleCart.min.js"> </script>
</head>
<body>
	<div class="men_banner">
   	  <div class="container">
   	  	<div class="header_top">
   	  	   <div class="header_top_left">
	  	      <div class="box_11"><a href="${pageContext.request.contextPath}/getCheckoutList">
		      <h4><p>购物车 : <span class="simpleCart_total"></span> (<span id="simpleCart_quantity" class="simpleCart_quantity"></span> 件)</p><img src="${pageContext.request.contextPath}/assets/images/bag.png" alt=""/><div class="clearfix"> </div></h4>
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
		  <!-- <h1><a href="index.jsp"><span class="m_1">W</span>atches</a></h1> -->
	   </div>
	   <div class="menu">
	     <ul class="megamenu skyblue">
			<li><a class="color2" href="${pageContext.request.contextPath }/getProducts">男士</a>
				
			</li>
			<li><a class="color4" href="${pageContext.request.contextPath }/getProducts">女士</a>
				
				</li>				
				<li class="active grid"><a class="color10" href="${pageContext.request.contextPath}/getBrandList">品牌</a></li>
				<li><a class="color3" href="${pageContext.request.contextPath}/views/index.jsp">特卖</a></li>
				<li><a class="color7" href="${pageContext.request.contextPath}/views/404.jsp">新闻</a></li>
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
	       <form class="" action="" id="getForm">
	       
	          <div class="single_left">
	      	  <div class="labout span_1_of_a1">
				<div class="flexslider">
						 <ul class="slides">
							<li data-thumb="images/s1.jpg">
								<img src="/upload/${product.ppicture } " />
							</li>
						 </ul>
					  </div>
			          <div class="clearfix"></div>	
		    </div>
			<div class="cont1 span_2_of_a1 simpleCart_shelfItem">
			        <input type="hidden" name="pid" value="${product.pid }" id="pid"/>
					<h4>${product.pname }</h4>
					<p class="availability">库存: <span class="color">有货</span></p>
				    <div class="price_single">
					  <span class="amount item_price actual" id="price" name="price">￥  ${product.pprice }</span>
					</div>
					<h2 class="quick">描述:</h2>
					<p class="quick_desc" id="describe" name="describe">${product.pdescribe }</p>
				    <div class="wish-list">
					 	<ul>
					 	    <li class="compare"><a href="#">添加到购物车</a></li>
					 	</ul>
					 </div>
					<ul class="size">
						<h3>长度</h3>
						<li><a href="#">32</a></li>
						<li><a href="#">34</a></li>
					</ul>
					<div class="quantity_box">
					    <ul class="single_social">
							<li><a href="#"><i class="fb1"> </i> </a></li>
							<li><a href="#"><i class="tw1"> </i> </a></li>
							<li><a href="#"><i class="g1"> </i> </a></li>
							<li><a href="#"><i class="linked"> </i> </a></li>
			   		    </ul>
			   		    <div class="clearfix"></div>
		   		    </div>
				    <a id="addCart" class="btn btn-primary btn-normal btn-inline btn_form button item_add item_1" target="_self">Add to cart</a>
				</div>
			    <div class="clearfix"> </div>
			</div>
	       </form>
        <div class="sap_tabs">	
	       <div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
			  <ul class="resp-tabs-list">
			  	  <li class="resp-tab-item" aria-controls="tab_item-0" role="tab"><span>产品描述</span></li>
				  <li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><span>附加信息</span></li>
				  <li class="resp-tab-item" aria-controls="tab_item-2" role="tab"><span>评论</span></li>
			  </ul>				  	 
			  <div class="resp-tabs-container">
			    <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
					<div class="facts">
					  <ul class="tab_list">
					  	<li><a href="#">Lorem ipsum dolor坐下，管教成才，sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat。这就是为什么我来这里以获取更多信息，以便让任何一个从头到脚地锻炼的人都可以从她的肚子里抽出些什么来获得营养。</a></li>
					  	<li><a href="#">宣传dolore magna nulla。Nam liber tempor eleifend option congue nihil imperdiet doming quod他们在马西姆是独立的。我们有能力投资做烤。其他类型的移植物不透明。阅读器在其中的使用使它们轻便。调查</a></li>
					  	<li><a href="#">移植物的清晰度；阅读器在其中的使用使它们轻便。他们的研究表明，那些阅读我儿子的读者阅读频率更高。Dynamicus亮度也是更换普通床之后的过程。令人惊讶地注意到哥特字母</a></li>
					  	<li><a href="#">令人惊讶地注意到，哥特式字母现在已经在十四和十五世纪的年代里被认为具有明显的对文化的文学形式。以我们现在看起来更亮的相同方式进行类型，它们在将来变得固定。</a></li>
					  </ul>           
			        </div>
			     </div>	
			      <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
					<div class="facts">
					  <ul class="tab_list">
					    <li><a href="#">宣传dolore magna nulla。Nam liber tempor eleifend option congue nihil imperdiet doming quod他们在马西姆是独立的。我们有能力投资做烤。其他类型的移植物不透明。阅读器在其中的使用使它们轻便。调查</a></li>
					  	<li><a href="#">移植物的清晰度；阅读器在其中的使用使它们轻便。他们的研究表明，那些阅读我儿子的读者阅读频率更高。Dynamicus亮度也是更换普通床之后的过程。令人惊讶地注意到哥特字母</a></li>
					  	<li><a href="#">令人惊讶地注意到，哥特式字母现在已经在十四和十五世纪的年代里被认为具有明显的对文化的文学形式。以我们现在看起来更亮的相同方式进行类型，它们在将来变得固定。</a></li>
					  </ul>           
			        </div>
			     </div>	
			      <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-2">
			        <div class="facts">
					  <ul class="tab_list">
					  	<li><a href="#">Lorem ipsum dolor坐下，管教成才，sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat。这就是为什么我来这里以获取更多信息，以便让任何一个从头到脚地锻炼的人都可以从她的肚子里抽出些什么来获得营养。</a></li>
					  	<li><a href="#">宣传dolore magna nulla。Nam liber tempor eleifend option congue nihil imperdiet doming quod他们在马西姆是独立的。我们有能力投资做烤。其他类型的移植物不透明。阅读器在其中的使用使它们轻便。调查</a></li>
					  	<li><a href="#">移植物的清晰度；阅读器在其中的使用使它们轻便。他们的研究表明读者的腿</a></li>
					  	<li><a href="#">令人惊讶地注意到，哥特式字母现在已经在十四和十五世纪的年代里被认为具有明显的对文化的文学形式。以我们现在看起来更亮的相同方式进行类型，它们在将来变得固定。</a></li>
					  </ul>  
					</div>    
			     </div>	
			  </div>
		    </div>
		  </div>	
		</div>
		<div class="col-md-3 tabs">
	      <h3 class="m_1">相关产品</h3>
	      <ul class="product">
	      	<li class="product_img"><img src="${pageContext.request.contextPath}/assets/images/q01.png" class="img-responsive" alt=""/></li>
	      	<li class="product_desc">
	      		<h4><a href="#">TRUE THINLINE真薄系列蓝羽限量版腕表</a></h4>
	      		<p class="single_price">$18000</p>
	      	    <a href="#" class="link-cart">添加到购物车</a>
	        </li>
	      	<div class="clearfix"> </div>
	      </ul>
	      <ul class="product">
	      	<li class="product_img"><img src="${pageContext.request.contextPath}/assets/images/d01.png" class="img-responsive" alt=""/></li>
	      	<li class="product_desc">
	      		<h4><a href="#">TRUE THINLINE真薄系列腕表</a></h4>
	      		<p class="single_price">$15700</p>
	      	    <a href="#" class="link-cart">添加到购物车</a>
	        </li>
	      	<div class="clearfix"> </div>
	      </ul>
	      <ul class="product">
	      	<li class="product_img"><img src="${pageContext.request.contextPath}/assets/images/x01.png" class="img-responsive" alt=""/></li>
	      	<li class="product_desc">
	      		<h4><a href="#">TRUE THINLINE真薄系列腕表</a></h4>
	      		<p class="single_price">$15700</p>
	      	    <a href="#" class="link-cart">添加到购物车</a>
	        </li>
	      	<div class="clearfix"> </div>
	      </ul>
	      <ul class="product">
	      	<li class="product_img"><img src="${pageContext.request.contextPath}/assets/images/s01.png" class="img-responsive" alt=""/></li>
	      	<li class="product_desc">
	      		<h4><a href="#">TRUE THINLINE真薄系列腕表</a></h4>
	      		<p class="single_price">$15700</p>
	      	    <a href="#" class="link-cart">添加到购物车</a>
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
<!-- FlexSlider -->
<script defer src="${pageContext.request.contextPath}/assets/js/jquery.flexslider.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/flexslider.css" type="text/css" media="screen" />
<script type="text/javascript">
// Can also be used with $(document).ready()
		$(window).load(function() {
		  $('.flexslider').flexslider({
		    animation: "slide",
		    controlNav: "thumbnails"
		  });
		});
		
		 //获取数据
		var btn_save = function() {
			$.ajax({
				url: "${pageContext.request.contextPath}/product/findById?pid=${pro.pid }",
				data: $("#getForm").serialize(),
				success: function(data) {
					alert(data.result);
					if(data.result > 0) {
						$.jq_Alert({
							dialogModal: true,
							btnOkClick: function() {
								location.href = "${pageContext.request.contextPath}/product/getProducts";
							}
						});
					}
				},
				error:function(t){
					alert(t);
				}
			});
		}
		 
	 
</script>
<script>
	$(function(){
		//添加到购物车
		  $("#addCart").click(function(){
			  //获取pid的值
			  var pid=$("#pid").val();
			  $.ajax({
                  url:"${pageContext.request.contextPath}/addCheckout",
                  type:"get",
                  data:{pid:pid},
                  dataType:"json",// servlet中返回的是json
                  success:function(res){
                      if(res.result=="true"){
                          alert("添加到购物车成功！！！！");
                      }else{
                    	  alert("添加到购物车失败！！！！");
                      }
                  }
              });
		  });
	})
</script>
</body>
</html>		