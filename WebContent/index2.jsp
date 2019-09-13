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
		<div class="container">
		 
			<div class="col-md-2">
				<ul class="" style="font-size: 18px;list-style:none;">
					<c:forEach items="${categorys}" var="category">
					  <li style="line-height:29px"><a href="fenlei?categoryid=${category.cid }">${category.cname }</a></li>
				 </c:forEach>
				</ul>	
			</div>
		
			<!--
            	作者：3323914181@qq.com
            	时间：2019-08-17
            	描述：轮播图
            -->
			<div class="col-md-8">
				<div id="carousel-example-generic" class="carousel slide" data-ride="carousel" data-interval="2000">
				  <!-- Indicators -->
				  <ol class="carousel-indicators">
				    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
				    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
				    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
				     <li data-target="#carousel-example-generic" data-slide-to="3"></li>
				     <li data-target="#carousel-example-generic" data-slide-to="4"></li>
				  </ol>
				
				  <!-- Wrapper for slides -->
				  <div class="carousel-inner" role="listbox">
				    <div class="item active">
				      <a href="fenlei?categoryid=10"><img src="img/lun1.jpg" alt="..."></a>
				      <div class="carousel-caption">
				      </div>
				    </div>
				    <div class="item">
				      <a href="fenlei?categoryid=10"><img src="img/lun2.jpg" alt="..."></a>
				      <div class="carousel-caption">
				      </div>
				    </div>
				    <div class="item">
				      <a href="fenlei?categoryid=8"><img src="img/lun3.jpg" alt="..."></a>
				      <div class="carousel-caption">
				      </div>
				    </div>
				    <div class="item">
				      <a href="fenlei?categoryid=8"><img src="img/lun4.jpg" alt="..."></a>
				      <div class="carousel-caption">
				      </div>
				    </div>
				    <div class="item">
				      <a href="fenlei?categoryid=10"><img src="img/lun5.jpg" alt="..."></a>
				      <div class="carousel-caption">
				      </div>
				    </div>
				  </div>
				  <!-- 控制 -->
				  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
				    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				    <span class="sr-only">Previous</span>
				  </a>
				  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
				    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				    <span class="sr-only">Next</span>
				  </a>
				</div>
			</div>
			
			<!-- <div class="col-md-2">
				<ul class="" style="font-size: 18px;">
				  <li><a href="#">Home</a></li>
				  <li><a href="#">Library</a></li>
				  <li><a href="#">Data</a></li>
				  <li><a href="#">Home</a></li>
				  <li><a href="#">Library</a></li>
				  <li><a href="#">Data</a></li>
				</ul>	
			</div>
		</div>			
		<br />
		<br />
		<br /> -->
		
		<div class="col-md-2">
		<div id="fixCountry" class="fix-country fix-country-in" >
			<ul class="fix-country-list" style="list-style-type: none;">
				<li><a class="fix-county-block e_block"  href="guojia"><img src="img/quanqiu.png"/> 全球</a></li>
				<c:forEach items="${colist }" var="country">
					<li><a class="fix-county-block e_block"  href="guojia?countryid=${country.id}"><img src="${country.url}"/>${country.country_name}</a></li>
				</c:forEach>
			</ul>
		</div>
		</div>
		
		
		<div class="container">
			
			<a style="font-size: 30px; color:purple;">最新上架</a>	
			<!-- <a href="fenlei?categoryid=8" style="font-size:12px ; float:right;">更多<<<</a>	 -->
				<br />
			<hr color="#008000" size="10"/>
		</div>
		
		<div class="container" >
			<div class="row">
			<c:forEach items="${newlist}" var="good"> 
				<div class="col-md-3 col-sm-6">
					<div class="thumbnail">
						<a href="goodsdetail?gid=${good.gid }"><img style="height: 200px;border: 0px" src="images/${good.url }" class="img-thumbnail"  ></a>
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
		
		<!--
        	作者：3323914181@qq.com
        	时间：2019-08-20
        	描述：个护美妆  分栏
        -->
		<div class="container">
			
			<a style="font-size: 30px; color:purple;">个护美妆</a>	
			<a href="fenlei?categoryid=8" style="font-size:12px ; float:right;">更多<<<</a>	
				<br />
			<hr color="#008000" size="10"/>
		</div>
		
		<div class="container" >
			<div class="row">
			<c:forEach items="${goods}" var="good"> 
				<div class="col-md-3 col-sm-6">
					<div class="thumbnail">
						<a href="goodsdetail?gid=${good.gid }"><img style="height: 200px;border: 0px" src="images/${good.url }" class="img-thumbnail"  ></a>
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
		<!--
        	作者：3323914181@qq.com
        	时间：2019-08-20
        	描述： 电子产品  分栏
        -->
		<div class="container">
			
			<a style="font-size: 30px; color:purple;">电子产品</a>	
			<a href="fenlei?categoryid=2" style="font-size:12px ; float:right;">更多<<<</a>	
				<br />
			<hr color="#008000" size="10"/>
		</div>
		
		<div class="container" >
			<div class="row"> 
				<c:forEach items="${dzlist}" var="dz"> 
				<div class="col-md-3 col-sm-6">
					<div class="thumbnail">
						<a href="goodsdetail?gid=${dz.gid }"><img style="height: 200px;border: 0px" src="images/${dz.url }" class="img-thumbnail" ></a>
						<div class="caption">
					        <div onmouseover="paramsMatter(this)" style="width: 200px;height:25px;overflow:hidden;white-space:nowrap;text-overflow:ellipsis;">${dz.gname }</div>
					        <p>单价：<span style="color: red">¥ ${dz.price }</span></p>
					       <p align="center">
					        	<a href="addMyOrder?uid=${user.uid }&pid=${dz.gid}"  class="btn btn-default" role="button" style="width:40%;height:30px;font-size: 13px;background: red;"><span style="color: white">立即购买</span></a> 
					        	<a href="addMyCart?uid=${user.uid }&pid=${dz.gid }" class="btn btn-default" role="button" style="width:40%;height:30px;font-size: 13px;border: solid 2px red;background: white">加入购物车</a>
					        </p>
					    </div>
					</div>
				</div>
			</c:forEach>
				
			</div>
				
				
				
			</div>	
			
			
			
		</div>
		<jsp:include page="footer.jsp"></jsp:include>
				
	</body>	
</html>
