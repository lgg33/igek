<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
    	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="css/bootstrap.css" />
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
		<link rel="stylesheet" type="text/css" href="css/bootstrap-theme.css"/>
		<link rel="stylesheet" type="text/css" href="css/country.css"/>
		<script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.js"></script>
		<script src="js/bootstrap.min.js"></script>	
        <title>igekBuy</title>
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

    	<ul class="nav nav-tabs">
		  <li role="presentation"><a href="weizhifu?uid=${user.uid }">未支付</a></li>
		  <li role="presentation"><a href="yizhifu?uid=${user.uid }">已支付</a></li>
		</ul>
    	</div>
    	<br>
    	
 		<div class="container">
 			<table class="table table-condensed">
		 			<tr class="active">
		 				<td><input type="hidden" name="ch1" id="ch1" value="0" onclick="quan()"/></td>
		 				<td >订单号</td>
		 				<td >地址</td>
						<td >商品名</td>
						<td >商品单价</td>
						<td >商品数量</td>
						<td >商品总价</td>
						<td >添加时间</td>
						
					</tr>
					<c:forEach  var="order"  items="${orders }">
							<tr class="warning">
								
								<td><input type="hidden" name="ch" id="" value="${ order.oid}" />
								<input type="hidden" name="hi" value="${ order.pid}">
								</td>
								<td >  ${ order.onum}</td>
								<td > <input type="text" name="oaddre" value="${ order.address}"></td>
								<td >   ${ order.oname}</td>
								<td >   ${ order.price}
								
								</td>
								<td >   ${ order.pnum}
								<input type="hidden" name="hn" value="${ order.pnum}">
								</td>
								<td >  ${ order.money}</td>
								<td >   ${ order.otime}</td>
							</tr>
				</c:forEach>
					
		</table>
</div>
			


 	
		<!-- 底部 -->
		<br><br><br>
		<div class="container">
				<div id=""class="col-md-12">
					<p align="center">@2019  Copyright igekBuy</p>
				</div>
			</div>
		 <script type="text/javascript">
		 
		 
		
    
    	function queren1(){
    		var ch=document.getElementsByName("ch");
    		var hi=document.getElementsByName("hi");
    		var hn=document.getElementsByName("hn");
    		var oadd=document.getElementsByName("oaddre");
			for(var i=0;i<ch.length;i++){
				if(ch[i].checked){ 
						var chv=ch[i].value;
						var hiv=hi[i].value;
						var hnv=hn[i].value;
						var oaddv=oadd[i].value;
						if(oaddv==null||oaddv==""){
							alert("地址不能为空！");
							break;
						}
						/* alert(chv); */
						  $.ajax({
							    type : "POST", //数据传输的方式
							    url : "queren", //进行判断的地址值
							    data : { oid:chv, pid:hiv,pnum:hnv,address:oaddv}, //使用(key,value)方式传递数据
							    dataType : "json", //文件类型
							    success : function(data) {
							     if (data==1) {
								/* location.href="selAll"; */
								location.href="weizhifu";
							     } else {
									alert("false");
									}
							     }
							   });
						/* location.href="weizhifu"; */
				}
				/* location.href="weizhifu"; */
			}
			
    	}	
    
	    function quan(){
			var ch1=document.getElementById("ch1");
			var ch=document.getElementsByName("ch");
			for(var i=0;i<ch.length;i++){
				ch[i].checked=ch1.checked;
			}
			
		}
    </script>	
			
 	</body>
</html>