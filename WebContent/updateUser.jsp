<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>igekBuy登录</title>
		<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css" />
		<script src="js/jquery.min.js" type="text/javascript"></script>
		<script src="js/bootstrap.min.js" type="text/javascrip"></script>
		<link rel="stylesheet" href="css/style.css" type="text/css"/>
</head>


<body background="img/load.jpg">

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

	<div class="col-md-8" style="margin:40px 400px;">
		<h2>修改信息</h2>USERINFO  UPDATE
		
			<form class="form-horizontal" style="margin-top:40px;" method="post" action="updateUser.do">
				<input type="hidden" name="method" value="regist">
				<input  type="hidden" name="uid" value="${user.uid} ">
				 <div class="form-group">
				    <label for="username" class="col-sm-2 control-label">用户名</label>
				    <div class="col-sm-6">
				      <input type="text" class="form-control" id="uname" placeholder="请输入用户名" name="uname">
				    </div>
				  </div>
				   <div class="form-group">
				    <label for="inputPassword3" class="col-sm-2 control-label">密码</label>
				    <div class="col-sm-6">
				      <input type="password" class="form-control" id="psw" placeholder="请输入密码" name="psw">
				    </div>
				  </div>
				   <div class="form-group">
				    <label for="confirmpwd" class="col-sm-2 control-label">确认密码</label>
				    <div class="col-sm-6">
				      <input type="password" class="form-control" id="confirmpwd" placeholder="请输入确认密码" name="password2">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label">地址</label>
				    <div class="col-sm-6">
				      <input type="text" class="form-control" id="uaddress" placeholder="请输入您的地址" name="uaddress">
				    </div>
				  </div>
				 <div class="form-group">
				    <label for="usercaption" class="col-sm-2 control-label">电话</label>
				    <div class="col-sm-6">
				      <input type="text" class="form-control" id="tel" placeholder="请输入联系电话" name="tel">
				    </div>
				  </div>
				  <div class="form-group opt">  
						  <label for="inlineRadio1" class="col-sm-2 control-label">性别</label>  
						  <div class="col-sm-6">
							    <label class="radio-inline">
									  <input type="radio" name="sex" id="inlineRadio1" value="男"> 男
								</label>
								<label class="radio-inline">
									  <input type="radio" name="sex" id="inlineRadio2" value="女"> 女
								</label>
						</div>
				  </div>		
				  <div class="form-group">
				    <label for="date" class="col-sm-2 control-label">年龄</label>
				    <div class="col-sm-6">
				      <input type="text" class="form-control"  name="age">		      
				    </div>
				  </div>
				  
				
				  <div class="form-group">
				    <div class="col-sm-offset-2 col-sm-10">
				    	<input type="button" value="返回" onclick="history.back(-1)"/>
				    	
					    <input type="submit"  width="100" value="确认修改" name="submit" border="0"
					    style="background: url('img/register.gif') no-repeat scroll 0 0 rgba(0, 0, 0, 0);
					    height:35px;width:100px;color:white;">
				    </div>
				  </div>
				</form>
	</div>
</body>
</html>