<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
    
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path ;
	%>    
<!DOCTYPE html>
<html>
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
    	<!-- 
    	<div class="container">
    		<div class="col-md-8">  </div>
    		<div class="col-md-4">
				<form class="navbar-form navbar-left" action="searchGood.do" method="post">
			        <div class="form-group">
			          <input type="text" class="form-control" placeholder="搜索购物车中的商品">
			        </div>
			        <button type="submit" class="btn btn-default">搜索</button>
				</form>
			</div>
		</div>
		 -->
		 <input id="in2" type="hidden" value="${ user.uid}" >
    	<div class="container" >
			<div class="row">
			<c:forEach items="${carts }" var="cart"> 
					
				<div class="col-md-3 col-sm-6">
					<div class="thumbnail">
						<a href="goodsdetail?gid=${cart.pid }"><img style="height: 200px;" src="images/${cart.curl }" class="img-thumbnail" ></a>
						<div class="caption">
					        <div onmouseover="paramsMatter(this)" style="width: 200px;height:25px;overflow:hidden;white-space:nowrap;text-overflow:ellipsis;">${cart.cname }</div>
					        <p>单价：<span style="color: red">¥ ${cart.cprice }   &nbsp; &nbsp;  &nbsp;  &nbsp;  &nbsp;    </span> <%-- 数量：<span style="color: red">   ${cart.cnum }</span> --%> </p> 
						    <div style="padding-bottom: 20px;height: 20px">
					         	<span style="float: left;"> 选择数量：</span>
						       <%-- <button id="${cart.cid }" name="in1" class="btn btn-default" type="button" style="float: left;height: 25px;width: 25px">-</button> --%>
						
						     <input id="inp" type="text" name="cnum" class="form-control" value="${cart.cnum }" style="float: left;width: 50px;height: 25px;">
						     
						       <!-- <button id="" name="de" class="btn btn-default" type="button" style="float: left;height: 25px;width: 25px">+</button> -->
						     </div>
					        <p align="center"  >
					        	<a href="deleteCart?pid=${ cart.pid }&uid=${ user.uid}" class="btn btn-default" role="button" style="width:40%;height:30px;font-size: 13px;background: red;"><span style="color: white">删除</span></a> 
					        	<input type="checkbox" name="ch" id="" value="${cart.cid }" />
					        </p>
					    </div>
					</div>
				</div>
				
				
				</c:forEach>
				
				
				
			</div>
		</div>
		
		<!-- <div class="input-group" style="width: 400px;margin-left: 60px">
				  <span class="input-group-addon" id="basic-addon1">地址</span>
				  <input id="in1" type="text" class="form-control" placeholder="请输入地址" aria-describedby="basic-addon1">
		</div> -->
			<div class="container" align="right">
				<a href="deleteMyCart?uid=${ user.uid}" class="btn btn-warning" role="button">清空购物车</a>   &nbsp; &nbsp;
				<a href="tomyorder?uid=${user.uid }" class="btn btn-info" role="button">前往我的订单</a>
				<a onclick="h()" class="btn btn-info" role="button">提交订单</a>
			</div>	       
		<!-- 底部 -->
		<jsp:include page="footer.jsp"></jsp:include>
		<script type="text/javascript">
		
		
	        
		
		function h(){
			var ch=document.getElementsByName("ch");
			var cnum=document.getElementsByName("cnum");
			var a=$('#in1').val();
			
			var b=$('#in2').val();
		
				
				for(var i=0;i<ch.length;i++){
					if(ch[i].checked){ 
							var chv=ch[i].value;
							var cnumv=cnum[i].value;
							/* alert(chv); */
							  $.ajax({
								    type : "POST", //数据传输的方式
								    url : "addmyOrder", //进行判断的地址值
								    data : { cid:chv, uid:b , address:a,cnum:cnumv}, //使用(key,value)方式传递数据
								    dataType : "json", //文件类型
								    success : function(data) {
								     if (data==1) {
									/* location.href="selAll"; */
									
								     } else {
										alert("false");
										}
								     }
								   });
					}
					 location.href="weizhifu"; 
				}
				
				/* location.href="addmyOrder.do?cid=${cart.cid }&uid=${ user.uid}&address="+a; */
			
			
			
		}
		
			
		</script>
 	</body>
</html>