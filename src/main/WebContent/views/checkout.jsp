<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- 让EL表达式生效 -->
<%@ page isELIgnored="false" %>
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
<link href="${pageContext.request.contextPath}/assets/css/style.css" rel='stylesheet' type='text/css' />
<link href='//fonts.googleapis.com/css?family=PT+Sans+Narrow:400,700' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Dorsa' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery-1.11.1.min.js"></script>
<!-- start menu -->
<link href="${pageContext.request.contextPath}/assets/css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
<script src="${pageContext.request.contextPath}/assets/js/jquery.easydropdown.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/simpleCart.min.js"> </script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery.pagination.js"></script>   
</head>
<body>
	<div class="men_banner">
   	  <div class="container">
   	  	<div class="header_top">
   	  	   <div class="header_top_left">
	  	      <div class="box_11"><a href="${pageContext.request.contextPath}/getCheckoutList">
		      <h4><p>购物车: <span class="simpleCart_total"></span> (<span>${pageInfo.total }</span> 件)</p><img src="${pageContext.request.contextPath}/assets/images/bag.png" alt=""/><div class="clearfix"> </div></h4>
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
				<li class="user_desc" id="admin">${loginUser.uname }</li>
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
		    <!-- <h1><a href="index.html"><span class="m_1">W</span>atches</a></h1> -->
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
   <div class="account-in">
   	 <div class="container">
		  <div class="check_box">	 
		<div class="col-md-9 cart-items">
			 <h1 id="num">我的购物袋 (${pageInfo.total })</h1>
				<script>$(document).ready(function(c) {
					$('.close1').on('click', function(c){
						$('.cart-header').fadeOut('slow', function(c){
							$('.cart-header').remove();
						});
						});	  
					});
			   </script>
			 <c:set var="sum" value="0"></c:set> 
			 <c:forEach items="${pageInfo.list }" var="checkout">
			 	<div class="cart-header">
				 <div class="close1" onclick="del(${checkout.pid })"> </div>
				   <div class="cart-sec simpleCart_shelfItem">
						<div class="cart-item cyc">
							 <img src="/upload/${checkout.ppicture }" class="img-responsive" alt=""/>
						</div>
					   <div class="cart-item-info">
						<h3><a href="#">${checkout.pname }</a><span>型号:${checkout.modelnum }</span></h3>
						<ul class="qty">
							<li><p>大小 :${checkout.psize }</p></li>
							<li><p>数量: ${checkout.pnumber }</p></li>
						</ul>
						<div class="delivery">
							 <p id="price">服务费: ${checkout.pprice }元</p>
							 <c:set var="sum" value="${sum+checkout.pprice }"></c:set>
							 <span>2-3个工作日内发货</span>
							 <div class="clearfix"></div>
				        </div>	
					   </div>
					   <div class="clearfix"></div>
				    </div>
			 </div>
			</c:forEach>
			<div id="div_pagination_bottom">
			            <nav aria-label="Page navigation">
			                <ul class="pagination">
			                     <li>
			                         <a href="${pageContext.request.contextPath}/getCheckoutList?currpage=${pageInfo.pageNum-1}"
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
			                                 <a style="margin-top: 1px;" href="${pageContext.request.contextPath}/getCheckoutList?currpage=${ page_Num}">${ page_Num}</a>
			                            </li>
			                        </c:if>
			                     </c:forEach>
			                    <li>
			                        <a href="${pageContext.request.contextPath}/getCheckoutList?currpage=${pageInfo.pageNum+1}"
			                            aria-label="Next">
			                             <span aria-hidden="true">&raquo;</span>
			                         </a>
			                    </li>
			                </ul>
			            </nav>
			        </div>	
		 </div>
		 <div class="col-md-3 cart-total">
			 <a class="continue" href="${pageContext.request.contextPath}/views/index.jsp">继续购物</a>
			 <div class="price-details">
				 <h3>价格明细</h3>
				 <span>总</span>
				 
				<span class="total">${sum}</span>
				 <span>折扣</span>
				 <span class="total1">0</span>
				 <span>服务费</span>
				 <span class="total2">15</span>
				 <div class="clearfix"></div>				 
			 </div>	
			 <ul class="total_price">
			   <li class="last_price"> <h4>应付</h4></li>	
			   <li class="last_price"><span class="total3">6350.00</span></li>
			   <div class="clearfix"> </div>
			 </ul>
			 <div class="clearfix"></div>
			 <a class="order" id="s">下单</a>
			 <div class="total-item">
				 <h3>选项</h3>
				 <h4>优惠卷</h4>
				 <a class="cpns" href="#" id=cpns>申请优惠卷</a>
				 <p><a href="#">登录</a> 登录以使用帐户-链接的优惠券</p>
			 </div>
			</div>
			<div class="clearfix"></div>
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
   <script>
   $(document).ready(function(c) {
				 /* var x= $("#price").text();
				 s="";
				 for(i=0;i<x.length;i++) { 
					if("0123456789".indexOf(x.substr(i,1))>-1) 
				    s+=x.substr(i,1)
					} 
				    $(".total0").html(s); */
					$('.close2').on('click', function(c){
							$('.cart-header2').fadeOut('slow', function(c){
						$('.cart-header2').remove();
					});
					});	  
					});
	function del(obj) {
		$.get("${pageContext.request.contextPath }/deleteCheckout",{pid:obj},function(data){
			console.log(data.result);
			//data = eval('('+data+')');
			if(data.result==1){
				alert("删除成功！！！");
				// 刷新当前页面
				window.location.href="getCheckoutList";
			}else{
				alert("删除失败！！！");
			}
		});
	}
		$("#s").click(function(){
			var admin=$("#admin").html().length;
			if(admin==0){
				alert("不登陆不可以下单哦！！！！！！！！！");
			}if(admin!=0){
				window.location.href="${pageContext.request.contextPath }/getAll";
			}
		});
		
		$("#cpns").click(function(){
			var math=parseInt(Math.round(Math.random()*(120-9.9)+9.9));
			$(".total1").html(math);
			alert("亲！给你优惠了"+math+"元哦！！！");
			var a= parseInt($(".total").html());
			var charfree=parseInt($(".total2").html());
			var z=a+charfree-math;
			$(".total3").text(z);
		});
		$(function(){
			var a= parseInt($(".total").html());
			var discount=parseInt($(".total1").html());
			var charfree=parseInt(${pageInfo.total});
			$(".total2").html(charfree*15)
			var z=a+charfree*15-discount;
			$(".total3").text(z);
			
		});
	</script>
</body>
</html>		