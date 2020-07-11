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
	<div class="banner">
   	  <div class="container">
   	  	<div class="header_top">
   	  	   <div class="header_top_left">
	  	      <div class="box_11"><a href="${pageContext.request.contextPath}/getCheckoutList">
		      <h4><p>购物车: <span>￥0.00</span> (<span>${pageInfo.total}</span>件)</p><img src="${pageContext.request.contextPath}/assets/images/bag.png" alt=""/><div class="clearfix"> </div></h4>
		      </a></div>
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
			<li><a class="color2" href="${pageContext.request.contextPath }/getProducts">男士</a></li>
			<li><a class="color4" href="${pageContext.request.contextPath }/getProducts">女士</a></li>				
				<li><a class="color10" href="${pageContext.request.contextPath}/getBrandList">品牌</a></li>
				<li class="active grid"><a class="color3" href="${pageContext.request.contextPath}/views/index.jsp">特卖</a></li>
				<li><a class="color7" href="${pageContext.request.contextPath}/getNewList">新闻</a></li>
				<div class="clearfix"> </div>
			</ul>
			</div>
	        <div class="clearfix"> </div>
	        </div>
	    </div>
   </div>
   <div class="main">
    <div class="container">
    	<ul class="content-home">
           <li class="col-sm-4">
              <a href="${pageContext.request.contextPath}/getProducts" class="item-link" title="">
                <div class="bannerBox">
                   <img src="${pageContext.request.contextPath}/assets/images/y01.png" class="item-img" title="" alt="" width="60%" height="50%" style="position:relative;left:75px;">
                   <div class="item-html">
                      <h4>男士<span>手表</span></h4>
                      <button style="position:relative;left:61px;top:226px"><a href="${pageContext.request.contextPath}/getProducts" >现在去购物!</a></button>
                   </div>
                </div>
              </a>
           </li>
           <li class="col-sm-4">
              <a href="${pageContext.request.contextPath}/getProducts" class="item-link" title="">
                <div class="bannerBox">
                   <img src="${pageContext.request.contextPath}/assets/images/v01.png" class="item-img" title="" alt="" width="60%" height="50%" style="position:relative;left:75px;">
                   <div class="item-html">
                      <h4>男士<span>手表</span></h4>
                      <button style="position:relative;left:61px;top:226px"><a href="${pageContext.request.contextPath}/getProducts">现在去购物!</a></button>
                   </div>
                </div>
              </a>
           </li>
           <li class="col-sm-4">
              <a href="${pageContext.request.contextPath}/getProducts" class="item-link" title="">
                <div class="bannerBox">
                   <img src="${pageContext.request.contextPath}/assets/images/x01.png" class="item-img" title="" alt="" width="60%" height="50%" style="position:relative;left:75px;">
                   <div class="item-html">
                      <h4>女士<span>手表</span></h4>
                      <button style="position:relative;left:61px;top:226px"><a href="${pageContext.request.contextPath}/getProducts">现在去购物!</a></button>
                   </div>
                </div>
              </a>
           </li> 
           <div class="clearfix"> </div>         
       </ul>
    </div>
    <div class="middle_content">
    	<div class="container">
    		<h2>欢迎</h2>
    		<p>Lorem Ipsum的段落有很多变体，但是大多数都因注入幽默感或看起来有些难以置信的随机单词而以某种形式发生了变化。如果要使用Lorem Ipsum的段落，则需要确保文本中间没有隐藏任何令人尴尬的内容。Internet上的所有Lorem Ipsum生成器都倾向于根据需要重复预定义的块，这使其成为Internet上第一个真正的生成器。它使用包含200多个拉丁词的字典，再结合少量模型句子结构，生成看起来合理的Lorem Ipsum。因此，生成的Lorem Ipsum始终没有重复，没有注入幽默感或无特征的单词等。</p>
    	</div>
    </div>
   	<div class="content_middle_bottom">
   		<div class="header-left" id="home">
		      <section>
				<ul class="lb-album" >
					<li>
						<a href="#image-1">
							<img src="${pageContext.request.contextPath}/assets/images/g1.jpg"  class="img-responsive" alt="image01"/>
							<span>尖角</span>
						</a>
						<div class="lb-overlay" id="image-1">
							<a href="#page" class="lb-close">x 关闭</a>
							<img src="${pageContext.request.contextPath}/assets/images/g1.jpg"  class="img-responsive" alt="image01"/>
							<div>
								<h3>尖角 <span>/pointe/</span></h3>
								<p>脚尖上跳舞</p>
							</div>
						</div>
					</li>
					<li>
						<a href="#image-2">
							<img src="${pageContext.request.contextPath}/assets/images/g2.jpg"  class="img-responsive" alt="image02"/>
							<span>手的运动</span>
						</a>
						<div class="lb-overlay" id="image-2">
							<img src="${pageContext.request.contextPath}/assets/images/g2.jpg"  class="img-responsive" alt="image02"/>
							<div>							
								<h3>手的运动<span>/ˌpôr də ˈbrä/</span></h3>
								<p>一种旨在使手臂优雅运动和摆放的运动</p>
							</div>
							<a href="#page" class="lb-close">x 关闭</a>
						</div>
					</li>
					<li>
						<a href="#image-3">
							<img src="${pageContext.request.contextPath}/assets/images/g3.jpg"  class="img-responsive" alt="image03"/>
							<span>曲膝</span>
						</a>
						<div class="lb-overlay" id="image-3">
							<img src="${pageContext.request.contextPath}/assets/images/g3.jpg"  class="img-responsive" alt="image03"/>
							<div>							
								<h3>曲膝 <span>/plēˈā/</span></h3>
								<p>舞者弯曲膝盖并再次拉直的动作</p>
							</div>
							<a href="#page" class="lb-close">x 关闭</a>
						</div>
					</li>
					<li>
						<a href="#image-4">
							<img src="${pageContext.request.contextPath}/assets/images/g4.jpg"  class="img-responsive" alt="image04"/>
							<span>阿达吉奥</span>
						</a>
						<div class="lb-overlay" id="image-4">
							<img src="${pageContext.request.contextPath}/assets/images/g4.jpg"  class="img-responsive" alt="image04"/>
							<div>							
								<h3>阿达吉奥 <span>/əˈdäjō/</span></h3>
								<p>标记为要演奏的运动或构图</p>
							</div>
							<a href="#page" class="lb-close">x 关闭</a>
						</div>
					</li>
					<li>
						<a href="#image-5">
							<img src="${pageContext.request.contextPath}/assets/images/g5.jpg"  class="img-responsive" alt="image05"/>
							<span>弗拉佩</span>
						</a>
						<div class="lb-overlay" id="image-5">
							<img src="${pageContext.request.contextPath}/assets/images/g5.jpg"  class="img-responsive" alt="image05"/>
							<div>							
								<h3>弗拉佩<span>/fraˈpā/</span></h3>
								<p>涉及一只脚的脚趾跳动到支撑腿的脚踝</p>
							</div>
							<a href="#page" class="lb-close">x 关闭</a>
						</div>
					</li>
					<li>
						<a href="#image-6">
							<img src="${pageContext.request.contextPath}/assets/images/g6.jpg"  class="img-responsive" alt="image06"/>
							<span>滑步</span>
						</a>
						<div class="lb-overlay" id="image-6">
							<img src="${pageContext.request.contextPath}/assets/images/g6.jpg"  class="img-responsive" alt="image06"/>
							<div>							
								<h3>滑步 <span>/gliˈsäd/</span></h3>
								<p>一条腿从身体上向外刷，然后承受重量，而另一条腿被刷到身体上</p>
							</div>
							<a href="#page" class="lb-close">x 关闭</a>
						</div>
					</li>
					<li>
						<a href="#image-7">
							<img src="${pageContext.request.contextPath}/assets/images/g7.jpg"  class="img-responsive" alt="image07"/>
							<span>小跳</span>
						</a>
						<div class="lb-overlay" id="image-7">
							<img src="${pageContext.request.contextPath}/assets/images/g7.jpg"  class="img-responsive" alt="image07"/>
							<div>							
								<h3>小跳 <span>/zhə-ˈtā/</span></h3>
								<p>从一只脚到另一只脚的弹跳</p>
							</div>
							<a href="#page" class="lb-close">x 关闭</a>
						</div>
					</li>
					<li>
						<a href="#image-8">
							<img src="${pageContext.request.contextPath}/assets/images/g8.jpg"  class="img-responsive" alt="image08"/>
							<span>皮克</span>
						</a>
						<div class="lb-overlay" id="image-8">
							<img src="${pageContext.request.contextPath}/assets/images/g8.jpg"  class="img-responsive" alt="image08"/>
							<div>							
								<h3>皮克 <span>/pēˈkā/</span></h3>
								<p>抬起并伸出的腿的脚尖强烈指向，急剧下降以撞到地板，然后立即向上反弹</p>
							</div>
							<a href="#page" class="lb-close">x 关闭</a>
						</div>
					</li>
					<div class="clearfix"></div>
				</ul>
			</section>
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