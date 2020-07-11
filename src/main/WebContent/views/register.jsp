<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<script src="${pageContext.request.contextPath}/assets/js/simpleCart.min.js"> </script>
</head>
<body>
	<div class="men_banner">
   	  <div class="container">
   	  	<div class="header_top">
   	  	   <div class="header_top_left">
	  	      <div class="box_11"><a href="checkout.html">
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
    <div class="account-in">
   	  <div class="container">
   	     <form id="regForm" action="${pageContext.request.contextPath}/addUser" method="post"> 
		   <div class="register-top-grid">
			<h2>个人信息</h2>
			 <div>
				<span style="color: red;" id="usernameError">姓名<label>*</label></span>
				<input type="text" id="uname" name="uname"> 
			 </div>
			 <div>
				 <span>电子邮件<label>*</label></span>
				 <input type="text" id="email" name="email"> 
			 </div>
			 <div class="clearfix"> </div>
			   <a class="news-letter" href="#">
				 <label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i> </i>订阅电子报</label>
			   </a>
			 </div>
		     <div class="register-bottom-grid">
				    <h2>登录信息</h2>
					 <div>
						<span style="color: red;" id="pwdError">密码<label>*</label></span>
						<input type="password" id="password" name="password">
					 </div>
					 <div>
						<span style="color: red;" id="conpwdError">确认密码<label>*</label></span>
						<input type="password" id="conpwd" name="conpassword">
					 </div>
					 <div class="clearfix"> </div>
			 </div>
			 <div class="clearfix"> </div>
				<div class="register-but">
					   <input type="submit" value="提交">
					   <div class="clearfix"> </div>		  
				</div>
		  </form>
	   </div>
	   <script type="text/javascript">
	  		$(function(){
	  			 $("#uname").blur(function(){
		              var ulen = $("#uname").val().length;
		              var usname=$("#uname").val();
		              if(ulen==0){           
		                  $("#usernameError").text("用户名不能为空！");
		                  $("#regForm").attr("onsubmit","return false");
		              }
		              else{
			                  $("#usernameError").html("");
			                 <%--  $.post('<%=basePath%>usernameJudge?username='+usname,null,function(data){  --%>
			                    /*  console.log(data); */
			                      if(data.result=='true'){
			                          alert("用户名已注册，青重新输入！！");
			                          $("#usernameError").text("对不起，用户名已存在！");  
			                          $("#regForm").attr("onsubmit","return false");
			                      }
			                      else{  
			                          $("#usernameError").text("恭喜您，用户名可用！");  
			                          $("#regForm").attr("onsubmit","return true");  
			                      }  
			                  /* }); */
			              }
		          }); 
			         $("#password").blur(function(){  
			     		  var len = $("#password").val().length;  
			     		   if(len==0){  
			     		            $("#pwdError").text("密码不能为空！");  
			     		            $("#regForm").attr("onsubmit","return false");  
			     		      }  
			     		    if(len>0&&len<4){  
			     		            $("#pwdError").text("密码位数最少为4位！");  
			     		            $("#regForm").attr("onsubmit","return false");  
			     		       }  
			     		    if(len>=4){  
			     		            $("#pwdError").text("密码格式正确！");  
			     		            $("#regForm").attr("onsubmit","return true");  
			     		       }  
			     	}); 
			         $("#conpwd").blur(function(){  
					        var oldpwd = $("#password").val();  
					        var conpwd = $("#conpwd").val();  
					        var number = $("#conpwd").val().length;  
					        if(number == 0){  
					            $("#conpwdError").text("密码不能为空！");  
					            $("#regForm").attr("onsubmit","return false");  
					        }  
					        else if(oldpwd!=conpwd){  
					                $("#conpwdError").text("两次密码不一致！");  
					                $("#regForm").attr("onsubmit","return false");  
					            }else{  
					                $("#conpwdError").text("密码符合！");  
					                $("#regForm").attr("onsubmit","return true");  
					            }  
					    });
	  		});
		   
		</script>
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