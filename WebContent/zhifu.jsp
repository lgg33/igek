<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>igekBuy</title>
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="css/bootstrap.css" />
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
		<link rel="stylesheet" type="text/css" href="css/bootstrap-theme.css"/>
		<link rel="stylesheet" type="text/css" href="css/country.css"/>
		<script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.js"></script>
		<script src="js/bootstrap.min.js"></script>	
    </head>
    <body>
    	
    	<!-- 头部 -->
    	<jsp:include page="header.jsp"></jsp:include>
    	
    		
			
			<div class="container">
				<div class="row"> 
						<h3>请使用支付宝或微信进行支付 <small>(左边二维码微支付宝，右边为微信支付)</small></h3>
						<div class="col-md-2">
							
						</div>
						<div class="col-md-8"  >
							<img src="img/igekzhifu.png"/>
						</div>
						
						<div class="col-md-3">
							
						</div>
				</div>
				<br><br>
				<div class="row">
				
					<div  class="col-md-8"></div>
					<div  class="col-md-4">
					<a href="index.jsp" type="botton"  class="btn btn-danger" style="margin-right: 20px" >我已支付</a>
					</div>
				</div>
			</div>
    	
    	<!-- 底部 -->
		<jsp:include page="footer.jsp"></jsp:include>
 	</body>
</html>