<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>订单物流信息</title>
    <link rel="stylesheet" href="<%=basePath%>/css/layui.css">    
    <link rel="stylesheet" href="<%=basePath%>/css/view.css"/>
    <link rel="stylesheet" href="<%=basePath%>/css/admin.css"/>  
    <link rel="stylesheet" href="<%=basePath%>/css/bootstrap.css"/>  
</head>
<body class="layui-view-body">
   <div class="layui-content">
    	<!-- -->
    	<div class="mianb">
    		<div class="mblf layui-col-xs6 layui-col-md6">
    			 <i class="layui-icon">&#xe656;</i>
    			 <p>订单管理 > <span>订单信息</span></p>
    		</div>    		
    	</div>
    	<!--面包屑导航-->
        <div class="layui-row">
            <div class="layui-card">
            	<div class="table-responsive">
			 		  <table class="layui-table" lay-skin="line" lay-size="lg" id="table">						  
						  <thead>
						    <tr>
						      <th>商品名称</th>
						      <th>商品数量</th>
						      <th>订单编号</th>
						      <th>收货人</th>	
						      <th>联系电话</th>
						      <th>收货地址</th>
						      <th>物流信息</th>
						      <th>操作</th>
						    </tr> 
						  </thead>
						  <tbody id="tbody">
						  	<c:forEach items="${pageInfo.list }" var="list">
						  		<tr>
						  			<th>${list.checkout.pname }</th>
						  			<th>${list.oid }</th>
						  			<th>${list.ordernum }</th>
						  			<th>${list.sname }</th>
						  			<th>${list.sphone }</th>
						  			<th>${list.saddress }</th>
						  			<c:if test="${list.checkout.status==0}">
									   <td><c:out value="待支付"/></td>
									</c:if>
									<c:if test="${list.checkout.status==1}">
									   <td><c:out value="待发货"/></td>
									</c:if>
									<c:if test="${list.checkout.status==2}">
									   <td><c:out value="已发货"/></td>
									</c:if>
						  			<td>
							      	  <div class="layui-table-cell laytable-cell-1-0-10"> 							      	  	 
								      	  	<a class="layui-btn layui-btn-normal layui-btn-xs" href="<%=basePath%>/updateUser?pid=${list.checkout.pid}">确认</a> 
							      	  </div>
							      </td>
						  		</tr>
						  	</c:forEach>
						  	
						  </tbody>
					</table>
			 	</div>
                   
           		<!--分页-->
           		<div id="div_pagination_bottom">
			            <nav aria-label="Page navigation">
			                <ul class="pagination">
			                     <li>
			                         <a href="<%=basePath%>/getAllOrder?currpage=${pageInfo.pageNum-1}"
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
			                                 <a style="margin-top: 1px;" href="<%=basePath%>/getAllOrder?currpage=${ page_Num}">${ page_Num}</a>
			                            </li>
			                        </c:if>
			                     </c:forEach>
			                    <li>
			                        <a href="<%=basePath%>/getAllOrder?currpage=${pageInfo.pageNum+1}"
			                            aria-label="Next">
			                             <span aria-hidden="true">&raquo;</span>
			                         </a>
			                    </li>
			                </ul>
			            </nav>
			        </div>	
           		<!--分页-->
            </div>           
        </div>
    </div>
    <script src="<%=basePath%>/js/jquery.min.js"></script>
<script src="<%=basePath%>/js/layui.all.js"></script>    
  <script>
    	var element = layui.element;
    	layui.use(['laypage', 'layer'], function(){
		  var laypage = layui.laypage
		  ,layer = layui.layer
		  ,$ = layui.jquery;		  
		  // 页面加载时获得后台数据
		 
		 	/* $.get("${pageContext.request.contextPath }/getAllOrder",function(res){
			 var html,showState;
			  $(res).each(function(){
			  	 if(this.exState == 0){
					 showState = "待发货";
				 }else if(this.exState == 1){
					 showState = "已发货";
				 }else if(this.exState == 2){
					 showState = "配送中";
				 }
			  
				 html += "<tr>"
				      +"<td>"+this.Pname+"</td>"
				      +"<td>"+this.OrderNum+"</td>"
				      +"<td>"+this.Sname+"</td>"
				      +"<td>"+this.Sphone+"</td>"	
				      +"<td>"+this.SAddress+"</td>"
				      +"<td>"+this.status+"</td>"
				      +"<td class='col-green'>"+showState+"</td>"
				      +"<td>"
				      	  +"<div class='layui-table-cell laytable-cell-1-0-10'>" 							      	  	 
					      	  	+"<a class='layui-btn layui-btn-primary layui-btn-xs confirm'>已确认</a>"							      	  	
				      	  +"</div>"
				      +"</td>"
				    +"</tr>";
			 });
			 $("#tbody").html(html);
		  });
		   */
		  
		  //页码完整功能
		  laypage.render({
		    elem: 'page'
		    ,count: 100
		    ,layout: ['count', 'prev', 'page', 'next', 'limit', 'skip']
		    ,jump: function(obj){
		      console.log(obj)
		    }
		  });
		  function update(tid){
				alert(tid);
				// 去后台获取数据
				$.get("${pageContext.request.contextPath }/findById",{pid:pid});
				layui.use('layer', function(){
		              var layer = layui.layer;
		              layer.open({
		                    type: 2,
		                    title: '修改任务信息',
		                    fix: false,
		                    shadeClose: true,
		                    shade: 0.8,
		                    area: ['660px', '420px'],
		                    content: "views/task_add.jsp",
		                    end: function () {
		                       location.reload();
		                    }
		                });
		            });
			} 
		  
		//判断弹框
		$(".confirm").click(function(){
				alert("5890");
				/* layer.confirm('确定已给该用户下单的商品已发货？', {
				  btn: ['是','否'] //按钮
				}, function(){
				  layer.msg('已发货', {icon: 1});
				}, function(){
				  layer.msg('已取消',  {icon: 2});
				}); 
				
				*/
			});
		});
	</script>
	
</body>
</html>