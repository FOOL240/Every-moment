<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<link href="${pageContext.request.contextPath}/assets/css/component.css" rel='stylesheet' type='text/css' />
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
	  	      <div class="box_11"><a href="${pageContext.request.contextPath}/getCheckoutList">
		      <h4><p>购物车: <span class="simpleCart_total"></span> (<span id="simpleCart_quantity" class="simpleCart_quantity"></span> 件)</p><img src="${pageContext.request.contextPath}/assets/images/bag.png" alt=""/><div class="clearfix"> </div></h4>
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
		 <!--  <h1><a href="index.jsp"><span class="m_1">W</span>atches</a></h1> -->
	   </div>
	   <div class="menu">
	     <ul class="megamenu skyblue">
			<li><a class="color2" href="${pageContext.request.contextPath }/getProducts">男士</a>
				
			</li>
			<li><a class="color4" href="${pageContext.request.contextPath }/getProducts">女士</a>
				
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
    	<div class="col-md-4 sidebar_men">
    	  <h3>分类目录</h3>
		   <ul class="product-categories color">
			<li class="cat-item cat-item-62"><a href="#">女士</a> <span class="count">(2)</span></li>
			<li class="cat-item cat-item-41"><a href="#">男士</a> <span class="count">(17)</span></li>
		  </ul>
		  <h3>颜色</h3>
    	  <ul class="product-categories color"><li class="cat-item cat-item-42"><a href="#">黑色</a> <span class="count">(14)</span></li>
			<li class="cat-item cat-item-60"><a href="#">蓝色</a> <span class="count">(2)</span></li>
			<li class="cat-item cat-item-63"><a href="#">红色</a> <span class="count">(2)</span></li>
			<li class="cat-item cat-item-54"><a href="#">灰色</a> <span class="count">(8)</span></li>
			<li class="cat-item cat-item-55"><a href="#">绿色</a> <span class="count">(11)</span></li>
		  </ul>
		  <h3>尺码</h3>
    	  <ul class="product-categories color"><li class="cat-item cat-item-42"><a href="#">大号</a> <span class="count">(14)</span></li>
			<li class="cat-item cat-item-60"><a href="#">中号</a> <span class="count">(2)</span></li>
			<li class="cat-item cat-item-63"><a href="#">小号</a> <span class="count">(2)</span></li>
			<li class="cat-item cat-item-54"><a href="#">加大号</a> <span class="count">(8)</span></li>
			<li class="cat-item cat-item-55"><a href="#">小小号</a> <span class="count">(11)</span></li>
		  </ul>
		  <h3>价格</h3>
    	  <ul class="product-categories"><li class="cat-item cat-item-42"><a href="#">10000元-12000元</a> <span class="count">(14)</span></li>
			<li class="cat-item cat-item-60"><a href="#">12000元-13000元</a> <span class="count">(2)</span></li>
			<li class="cat-item cat-item-63"><a href="#">13000元-14000元</a> <span class="count">(2)</span></li>
			<li class="cat-item cat-item-54"><a href="#">14000元-15000元</a> <span class="count">(8)</span></li>
			<li class="cat-item cat-item-55"><a href="#">15000元-16000元</a> <span class="count">(11)</span></li>
		  </ul>
		</div>
    	<div class="col-md-8 mens_right">
    		<div class="dreamcrub">
			   	<ul class="breadcrumbs">
                    <li class="home">
                       <a href="index.jsp" title="Go to Home Page">主页</a>&nbsp;
                       <span>&gt;</span>
                    </li>
                    <li class="home">&nbsp;
                     	   男士 / 女士&nbsp;
                    </li>
                </ul>
                <ul class="previous">
                	<li><a href="index.jsp">上一页</a></li>
                </ul>
                <div class="clearfix"></div>
			   </div>
			   <div class="mens-toolbar">
                 <div class="sort">
               	   <div class="sort-by">
		            <label>排序方式</label>
		            <select>
		                            <option value="">
		                   	           位置                </option>
		                            <option value="">
		                    	名称                </option>
		                            <option value="">
		                 	           价格                </option>
		            </select>
		            <a href=""><img src="${pageContext.request.contextPath}/assets/images/arrow2.gif" alt="" class="v-middle"></a>
                   </div>
    		     </div>
    	        <ul class="women_pagenation dc_paginationA dc_paginationA06">
			     <li><a href="#" class="previous">页面 : </a></li>
			     <li class="active"><a href="#">1</a></li>
			     <li><a href="#">2</a></li>
		  	    </ul>
                <div class="clearfix"></div>		
		        </div>
    		<div id="cbp-vm" class="cbp-vm-switcher cbp-vm-view-grid">
					<div class="cbp-vm-options">
						<a href="#" class="cbp-vm-icon cbp-vm-grid cbp-vm-selected" data-view="cbp-vm-view-grid" title="grid">Grid View</a>
						<a href="#" class="cbp-vm-icon cbp-vm-list" data-view="cbp-vm-view-list" title="list">List View</a>
					</div>
					<div class="pages">   
			        	 <div class="limiter visible-desktop">
			               <label></label>
			                  <select>
			                            <option value="" selected="selected">
			                    9                </option>
			                            <option value="">
			                    15                </option>
			                            <option value="">
			                    30                </option>
			                  </select> 条        
			               </div>
       	  			 </div>
					<div class="clearfix"></div>
				        <ul>
				           <c:forEach items="${pageInfo.list }" var="pro">
							  <li class="last simpleCart_shelfItem">
								<a class="cbp-vm-image" href="${pageContext.request.contextPath}/findById?pid=${pro.pid }">
									<div class="view view-first">
							   		  <div class="inner_content clearfix">
										<div class="product_image">
											<div class="mask1"><img src="/upload/${pro.ppicture }" class="img-responsive zoom-img"></div>
											<div class="mask">
					                       		<div class="info">快速浏览</div>
							                  </div>
											<div class="product_container">
											   <h4>${pro.pname }</h4>
											    <div class="price mount item_price">￥ ${pro.pprice }</div>
											    <a class="button item_add cbp-vm-icon cbp-vm-add" href="#">添加到购物车</a>
											 </div>		
										  </div>
					                     </div>
				                     </div>
								  </a>
							 </li>
						 </c:forEach>
						 	
				    </ul>
				</div>
				<div id="div_pagination_bottom">
			            <nav aria-label="Page navigation">
			                <ul class="pagination">
			                     <li>
			                         <a href="${pageContext.request.contextPath}/getProducts?currpage=${pageInfo.pageNum-1}"
			                           aria-label="Previous">
			                             <span aria-hidden="true">&laquo;</span>
			                         </a>
			                     </li>
			                     <c:forEach items="${pageInfo.navigatepageNums }" var="page_Num">
			                         <c:if test="${page_Num == pageInfo.pageNum }">
			                             <li class="active"><a href="#" style="margin-top: 1px;">${ page_Num}</a></li>
			                        </c:if>
			                         <c:if test="${page_Num != pageInfo.pageNum }">
			                            <li>
			                                 <a style="margin-top: 1px;" href="${pageContext.request.contextPath}/getProducts?currpage=${ page_Num}">${ page_Num}</a>
			                            </li>
			                        </c:if>
			                     </c:forEach>
			                    <li>
			                        <a href="${pageContext.request.contextPath}/getProducts?currpage=${pageInfo.pageNum+1}"
			                            aria-label="Next">
			                             <span aria-hidden="true">&raquo;</span>
			                         </a>
			                    </li>
			                </ul>
			            </nav>
			        </div>
				<script src="${pageContext.request.contextPath}/assets/js/cbpViewModeSwitch.js" type="text/javascript"></script>
                <script src="${pageContext.request.contextPath}/assets/js/classie.js" type="text/javascript"></script>
    	</div>
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