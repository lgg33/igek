<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
	<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>	
		<div class="container">
			<div class="col-md-3"> <img src="img/brand.png"></div>	
			
			<div class="col-md-5">
				<form class="navbar-form navbar-left" action="search"  method="post">
			        <div class="form-group" style="margin-top: 80px;margin-left: 200px;width: 300px">
			          <input type="text" name="goodname" class="form-control" placeholder="请输入商品信息" style="float: left;">
			          <button type="submit" class="btn btn-default" style="float: left;" onclick="see()" >搜索</button>
			        </div>
			        
				</form>
			</div>
		
			<div class="col-md-4" >				
				<c:choose>
				   <c:when test="${null != user}"> 
				   <div style="float: right;"> 
				   		<input type="hidden"  value="${user.uid }">
				    	<a href="tuichu">退出系统</a>
				    	<th> <font color="Red">${user.getUname() }</font>,欢迎你</th>   
				    	<a href="updateUser.jsp">修改个人信息</a> 
				    	<a href="tomyCart?uid=${user.uid }"  class="btn btn-danger" role="button">&nbsp;&nbsp;我的购物车</a> 
				    </div> 
				   </c:when>
				    <c:otherwise> 
				    <div style="float: right;">
				       <a href="load.jsp" type="button">登录</a>
						<a href="register.jsp">注册</a>
					</div>
				    </c:otherwise>
				</c:choose>
			</div>	
		</div>
		
		
				
		<div class="container"   >
			<nav class="navbar navbar-default navbar-static-top">
  				<div class="container" style="font-size: 25px;background-color:paleturquoise; ">
	   				<div class="col-md-4 fontcontrol1"><a href="index.jsp">igek首页</a></div>
					<div class="col-md-2 fontcontrol2"><a href="3">一线品牌</a></div>
					<div class="col-md-2 fontcontrol2"><a href="3">igek资讯</a></div>
					<div class="col-md-2 fontcontrol2"><a href="3">最热商品</a></div>
					<div class="col-md-2 fontcontrol2"><a href="3">关于</a></div>
  				</div>
			</nav>
		</div>