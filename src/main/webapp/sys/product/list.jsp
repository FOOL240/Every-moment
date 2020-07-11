<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML>
<html>
	<head>
		<base href="<%=basePath%>">

		<title>文章列表</title>
		<link rel="stylesheet" type="text/css"
			href="<%=basePath%>jslib/bootstrap/css/bootstrap.css">
		<link rel="stylesheet" type="text/css"
			href="<%=basePath%>css/theme.css">
		<link rel="stylesheet"
			href="<%=basePath%>jslib/font-awesome/css/font-awesome.css">
		<script src="<%=basePath%>jslib/jquery-1.7.2.min.js"
			type="text/javascript"></script>
		<link rel="stylesheet" href="<%=basePath%>/css/bootstrap.css"/>
	</head>

	<body class="content1">
		<div class="header">
			<h1 class="page-title">
				商品管理
			</h1>
		</div>
		<ul class="breadcrumb">
			<li>
				<a href="<%=basePath%>/sys/welcome.jsp">Home</a>
				<span class="divider">/</span>
			</li>
			<li class="active">
				商品列表
			</li>
		</ul>
		<div class="container-fluid">
			<div class="row-fluid">
				<form class="form-inline" method="post"
					action="<%=basePath%>product/find">
					<input class="input-xlarge" placeholder="商品名称..." name="pname"
						type="text" value="${param.pname}">
					<input class="btn icon-search" type="submit" value="查询" />
					<a class="btn btn-primary" href="<%=basePath%>product/add" style="background: #dea32c;">
						<i class="icon-plus"></i> 添加商品
					</a>
				</form>

				<div class="well">
					<table class="table">
						<thead>
							<tr>
								<th style="text-align:center;">
									商品名称
								</th>
								<th style="text-align:center;">
									商品价格
								</th>
								
								<th style="text-align:center;">
									商品图片
								</th>
								<th style="text-align:center;">
									商品描述
								</th>
								
								<th style="text-align:center;">
									数量
								</th>
								
								<th  colspan="2" style="width: 90px;text-align:center">
									操作
								</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${pageInfo.list}" var="item">
								<tr>
									<td style="width:200px;text-align:center;vertical-align:middle;">
										${item.pname}
									</td>
									<td style="text-align:center;vertical-align:middle;">
										${item.pprice}
									</td>					
									<td style="text-align:center;vertical-align:middle;">
										<img src="/upload/${item.ppicture}"  width="120px" alt=""/>
											
									</td>
									<td style="width:200px;text-align:center;vertical-align:middle;">
										${item.pdescribe}
									</td>
									
									<td style="text-align:center;vertical-align:middle;">
										${item.orderNum}
									</td>
									
									
									<td colspan="2" style="width: 90px;text-align:center;vertical-align:middle;">
										
										<a href="<%=basePath%>product/delete?pid=${item.pid}">删除</a>
										&ensp;
									</td>
								</tr>
							</c:forEach>
					
						</tbody>
						
					</table>
					<div id="div_pagination_bottom">
			            <nav aria-label="Page navigation">
			                <ul class="pagination">
			                     <li>
			                         <a href="<%=basePath%>product/list?currpage=${pageInfo.pageNum-1}"
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
			                                 <a style="margin-top: 1px;" href="<%=basePath%>product/list?currpage=${ page_Num}">${ page_Num}</a>
			                            </li>
			                        </c:if>
			                     </c:forEach>
			                    <li>
			                        <a href="<%=basePath%>product/list?currpage=${pageInfo.pageNum+1}"
			                            aria-label="Next">
			                             <span aria-hidden="true">&raquo;</span>
			                         </a>
			                    </li>
			                </ul>
			            </nav>
			        </div>
				</div>
					
		 </div>
			</div>
		</div>
	</body>
</html>
