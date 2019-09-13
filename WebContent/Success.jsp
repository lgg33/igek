<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
   <%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path ;
	%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
	
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="css/bootstrap.css" />
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
		<link rel="stylesheet" type="text/css" href="css/bootstrap-theme.css"/>
		<link rel="stylesheet" type="text/css" href="css/country.css"/>
		<link rel="stylesheet" type="text/css" href="css/zx.css"/>
		<script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.js"></script>
		<script src="js/bootstrap.min.js"></script>	
</head>
<body>
<jsp:include page="header.jsp"/>
<div class=contain>
<div class="row">
<div id="left"   class="col-md-4" >
    <ul class="left">
         <li><a href="${pageContext.request.contextPath }/thenews/shownews">最新资讯</a></li>
           <li><a href="${pageContext.request.contextPath }/thenews/findnewsByclass?newsclass=tgxx">团购信息</a></li>
           <li><a href="${pageContext.request.contextPath }/thenews/findnewsByclass?newsclass=dgcpzx">德国产品资讯</a></li>
           <li><a href="${pageContext.request.contextPath }/thenews/findnewsByclass?newsclass=axcpzx">>澳新产品资讯</a></li>
         <li><a href="${pageContext.request.contextPath }/thenews/findnewsByclass?newsclass=mgcpzx">>美国产品资讯</a></li>
           <li><a href="${pageContext.request.contextPath }/thenews/findnewsByclass?newsclass=hwwlps">>海外物流配送</a></li>
             <li><a href="${pageContext.request.contextPath }/thenews/findnewsByclass?newsclass=xgzcjd">>相关政策解读</a></li>
        </ul>

</div>

		<c:forEach var="thenews" items="${list}" >
       <div class="col-md-6 col-sm-3">
       <h2>最新：${thenews.newsname}</h2>
       </div>
      <div class="col-md-6 col-sm-3">
          <a href="#"><img alt="n" src="img/n.png"  style="width:350px" "height:60px"></a>
       </div>
       
       <div class="col-md-6 col-sm-3">
       <h4>${thenews.content}</h4>
       
       </div>
       </c:forEach>
       
       
       
       
       </div>
       

</div>

<jsp:include page="footer.jsp"/>
</body>
</html>