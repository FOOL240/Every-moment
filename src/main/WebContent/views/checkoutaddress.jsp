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
			  <a class="login" href="#">
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
				<li><a class="color7" href="404.jsp">新闻</a></li>
				<div class="clearfix"> </div>
			</ul>
			</div>
	        <div class="clearfix"> </div>
	    </div>
	   </div>
   </div>
		<div class="container-fluid">
		<div class="row-fluid">
			<div class="span12">
			
				<table class="table">
					<thead>
						<tr>
							<th>订单号</th>
							<th>产品名称</th>
							<th>购买时间</th>
							<th>订单状态</th>
						</tr>
					</thead>
					<tbody>
						
					<c:forEach items="${pageInfo.list }" var="cart" begin="0" end="4">
						<tr class="success">
							<td>${cart.ordernum }</td>
							<td>${cart.checkout.pname }</td>
							<td><fmt:formatDate value="${cart.checkout.createtime }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
							<c:if test="${cart.checkout.status==0}">
							   <td><c:out value="待支付"/></td>
							</c:if>
							<c:if test="${cart.checkout.status==1}">
							   <td><c:out value="待发货"/></td>
							</c:if>
							<c:if test="${cart.checkout.status==2}">
							   <td><c:out value="已发货"/></td>
							</c:if>
						</tr>
					</c:forEach>
					</tbody>
				</table>
				<form class="form-inline" action="${pageContext.request.contextPath }/addAddress" method="post">
					<fieldset>
						<legend>收货人信息</legend>
						<p>
							<label>订单号码：<input type="text" name="ordernum" id="ordernum" value=""/></label>
						</p>
						<p>
							<label>收获姓名：<input type="text" name="sname" value=""/>​​</label>
						</p>
						<p>
							<label>联系电话：<input type="text" name="sphone"/>​​</label>
						</p>
						<p>
							<label>收货地址：<input type="text" name="saddress"/>​​</label>
						</p>
						
						<p>
						<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<button class="btn btn-warning" type="reset">重置</button>
							<button class="btn btn-success" type="submit" id="submit">支付</button>
						</p>
					</fieldset>
				</form>
				</script>
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
   <script type="text/javascript">
   		$(function(){
   			var math=Math.round(Math.random()*(100000000000-999999999)+999999999);
			$("#ordernum").val(math);
   			
   		});
   </script>
</body>
</html>		