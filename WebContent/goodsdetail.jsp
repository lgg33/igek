<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<title>igek商品详情</title>
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">	
		<link rel="stylesheet" href="css/bootstrap.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request .contextPath}/css/bootstrap.min.css"/>
		<link rel="stylesheet" type="text/css" href="${pageContext.request .contextPath}/css/bootstrap-theme.css"/>
		<link rel="stylesheet" type="text/css" href="${pageContext.request .contextPath}/css/country.css"/>
		<script src="${pageContext.request .contextPath}/js/jquery.min.js"></script>
		<script src="${pageContext.request .contextPath}/js/bootstrap.js"></script>
		<script src="${pageContext.request .contextPath}/js/bootstrap.min.js"></script>
		<style type="text/css">
				imgdetails 
				{
				opacity:0.4;
				filter:alpha(opacity=40); 
				margin-top:20px;
				margin-left: 20px;
				height: 100%;
				width: 100%;
				}
				imgdetails:hover
				{
				opacity:1.0;
				filter:alpha(opacity=100); 
				}
		</style>
		
		<script type="text/javascript">
			        $(function(){
				        $('#btnadd').on('click', function() {
				            $('#inp').val( parseInt($('#inp').val(), 10) + 1);
				          });
				          $('#btnde').on('click', function() {
				            $('#inp').val( parseInt($('#inp').val(), 10) - 1);
				          });
			        })
		 </script>
			
</head>
<body>

	 <%  
              if(session.getAttribute("user") == null) {    
    %>  
           <script type="text/javascript" language="javascript">      
             alert("您还没有登录，请登录..."); 
            top.location.href="load.jsp";
            </script> 
    <%  
        }  
    %>  
		<!-- 头部 -->
    	<jsp:include page="header.jsp"></jsp:include>
		
		<div class="container">
    		<div id="" class="row">
    			
    			<div class="col-md-1"> </div>
    			<div class="col-md-5">
    				<img class="imgdetails" src="${pageContext.request .contextPath}/images/${good.url }">
    			</div>
    			<div class="col-md-6" style="margin-top: 50px;">
    				<form action="addCart?uid=${user.uid }" method="post">
	    				<input type="hidden"  name="pid" value="${good.gid }">
	    				<span>商品名称 :  &nbsp;&nbsp; ${good.gname} </span> <input name="cname" type="hidden"  value="${good.gname}"> <br /><br />
	    				<input type="hidden"  name="curl" value="${good.url }">
	    				<span> 属   地   : &nbsp;&nbsp;   ${good.country} </span>   <input name="country"   type="hidden"  value="${good.country}"><br /><br />
	    				<span> 价   格  :  &nbsp;&nbsp; <span style="color: red">${good.price}</span>  </span>  <input  name="cprice"   type="hidden"  value="${good.price}">  <br /><br />
						<span>详细信息  :  &nbsp;&nbsp; ${good.gshow}   </span><input   type="hidden"  value="${good.gshow}">   <br /><br />	 
						<span> 物   流    :  &nbsp;&nbsp; ${good.wl}   </span><input    name="cwl" type="hidden"  value="${good.wl}"><br />	<br />	    				
						<div style="padding-bottom: 20px;height: 20px">
					         	<span style="float: left;"> 选择数量：</span>
						       <button id="btnde" class="btn btn-default" type="button" style="float: left;height: 25px;">-</button>
						
						     <input id="inp" type="text" name="cnum" class="form-control" value="1" style="float: left;width: 60px;height: 25px;">
						     
						       <button id="btnadd" class="btn btn-default" type="button" style="float: left;height: 25px;">+</button>
						     </div> <br />	<br />	 	    		
						<span> 税费及运费   :   &nbsp;&nbsp;<span style="color: red">${good.tex}</span>   </span><input name="ctex"  type="hidden"  value="${good.tex}"><br />			  <br />  		
	    				<input  class="btn btn-danger" type="submit"  value="加入购物车">
    				</form>
    			</div> 
    		</div> 
    	</div>
		<!-- 底部 -->
		<jsp:include page="footer.jsp"></jsp:include>		
</body>
</html>