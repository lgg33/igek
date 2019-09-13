<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
   <%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path ;
	%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="css/bootstrap.css" />
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
		<link rel="stylesheet" type="text/css" href="css/bootstrap-theme.css"/>
		<link rel="stylesheet" type="text/css" href="css/country.css"/>
		<script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.js"></script>
		<script src="js/bootstrap.min.js"></script>	
		<title>igekBuy</title>
		
		<style type="text/css">
			.thumbnail:hover{
				/* border: solid 2px red; */
				transform: rotate(0deg) scale(1.1);/* 旋转缩放 */
				z-index: 1;/* 显示优先级 */
				transition: 1.5s;/* 加载时间 */
			}
		
		</style>
		<script type="text/javascript">
		function paramsMatter(row) {
			row.title = row.innerHTML;
		     /*   var values = row.innerHTML;
			  
		       var span=document.createElement('span');
		       span.setAttribute('title',values);
		       span.innerHTML = row.innerHTML;
		       
		       return span.outerHTML; */
		  }
		</script>
		
</head>
<body>

		<jsp:include page="header.jsp"></jsp:include>
		<div></div>
		<div class="container" >
		<ol class="breadcrumb">
		  <li><a href="selAll">首页</a></li>
		  <li role="presentation" class="active"><a href="#">
		  商品名：${goodname}
		  </a></li>
		  
		</ol>
		
		</div>
		
		<div class="container" >
			<div class="row">
			<c:forEach items="${searchgood}" var="good"> 
				<div class="col-md-3 col-sm-6">
					<div class="thumbnail">
						<a href="goodsdetail?gid="${good.gid }><img style="height: 200px;border: 0px" src="images/${good.url }" class="img-thumbnail" ></a>
						<div class="caption">
					        <div onmouseover="paramsMatter(this)" style="width: 200px;height:25px;overflow:hidden;white-space:nowrap;text-overflow:ellipsis;">${good.gname }</div>
					        <p>单价：<span style="color: red">¥ ${good.price }</span></p>
					       <p align="center">
					        	<a href="addMyOrder?uid=${user.uid }&pid=${good.gid}"  class="btn btn-default" role="button" style="width:40%;height:30px;font-size: 13px;background: red;"><span style="color: white">立即购买</span></a> 
					        	<a href="addMyCart?uid=${user.uid }&pid=${good.gid }" class="btn btn-default" role="button" style="width:40%;height:30px;font-size: 13px;border: solid 2px red;background: white">加入购物车</a>
					        </p>
					    </div>
					</div>
				</div>
			</c:forEach>
				
			</div>
			</div>
			
			
			<div align="center">
							

								<p>当前表格共${page.pages}页、${page.total}条记录</p>
								<nav aria-label="Page navigation">
									<ul class="pagination">
										<li><a
											href="search?page=${page.firstPage}&goodname=${goodname}"
											aria-label="Previous"> <span aria-hidden="true">«</span>
										</a></li>
										<c:forEach var="s" begin="1" end="${page.pages}">
											<li><a
												href="search?page=${s}&goodname=${goodname}">${s}</a></li>
										</c:forEach>
										<li><a
											href="search?page=${page.lastPage}&goodname=${goodname}"
											aria-label="Next"> <span aria-hidden="true">»</span>
										</a></li>
									</ul>
								</nav>
							

				</div>
			
				<!-- 底部 -->
		<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>