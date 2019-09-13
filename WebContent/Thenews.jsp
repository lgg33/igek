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
<div id="left">
    <ul class="left">
         <li><a href="thenews/shownews">最新资讯</a></li>
           <li><a href="thenews/findnewsByclass?newsclass=tgxx">团购信息</a></li>
           <li><a href="thenews/findnewsByclass?newsclass=dgcpzx">德国产品资讯</a></li>
           <li><a href="thenews/findnewsByclass?newsclass=axcpzx">澳新产品资讯</a></li>
         <li><a href="thenews/findnewsByclass?newsclass=mgcpzx">美国产品资讯</a></li>
           <li><a href="thenews/findnewsByclass?newsclass=hwwlps">海外物流配送</a></li>
             <li><a href="thenews/findnewsByclass?newsclass=xgzcjd">相关政策解读</a></li>
        </ul>

</div>



<div  class="center">
<div  class="czx"> <form action="thenews/findnews">
	<input type="text" name="newsname">
	<input type="submit" value="搜索">
</form> </div>

	  <c:forEach var="thenews" items="${list}" >
			
			

    <div class="media1"></div>
       <div class="media-left media-middle">
       <a href="${pageContext.request.contextPath }/thenews/findnewsBynid?nid=${thenews.nid}">
        <img class="media-object" src="img/zxun1.jpg" alt="史上最全奶粉价格一览表" style="width:160px" "height:30px">
       </a>
         </div>
     <div class="media-body">
        <h3 class="media-heading">${thenews.newsname}</h3>
          <a href="${pageContext.request.contextPath }/thenews/findnewsBynid?nid=${thenews.nid}">${thenews.content}</a>
     </div>
</c:forEach> 


</div>

<div class="line"></div>
<!-- 
<div class="media2">
  <div class="media-left media-middle">
    <a href="#">
     <img class="media-object" src="img/zxun1.jpg" alt="史上最全奶粉价格一览表" style="width:160px" "height:50px">
    </a>
  </div>
  <div class="media-body">
    <h4 class="media-heading">Middle aligned media</h4>
   <a href="#">史上最全奶粉价格一览表</a>
  </div>
</div>



<div class="line"></div>
<div class="media3">
  <div class="media-left media-middle">
    <a href="#">
      <img class="media-object" src="img/zxun1.jpg" alt="史上最全奶粉价格一览表" style="width:160px" "height:50px">
    </a>
  </div>
  <div class="media-body">
    <h4 class="media-heading">Middle aligned media</h4>
    <a href="#">史上最全奶粉价格一览表</a>
  </div>
</div>



<div class="line"></div>
<div class="media4">
  <div class="media-left media-middle">
    <a href="#">
      <img class="media-object" src="img/zxun1.jpg" alt="史上最全奶粉价格一览表" style="width:160px" "height:50px">
    </a>
  </div>
  <div class="media-body">
    <h4 class="media-heading">Middle aligned media</h4>
  <a href="#">史上最全奶粉价格一览表</a>
  </div>
</div>



<div class="line"></div>

<div class="media5">
  <div class="media-left media-middle">
    <a href="#">
      <img class="media-object" src="img/zxun1.jpg" alt="史上最全奶粉价格一览表" style="width:160px" "height:50px">
    </a>
  </div>
  <div class="media-body">
    <h4 class="media-heading">Middle aligned media</h4>
    <a href="#">史上最全奶粉价格一览表</a>
  </div>
  
  
  
  
  
  
</div>
<div class="line"></div>

	</div>
</div>
-->
</div>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<jsp:include page="footer.jsp"/>
</body>
</html>