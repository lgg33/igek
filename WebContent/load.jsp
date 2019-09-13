<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path ;
	%>    
    
<!DOCTYPE html>
<html lang="en">  
<head>  
    	<meta charset="UTF-8">  
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" type="text/css" href="css/Login.css"/>  
		<script src="js/bootstrap.js"></script>
        <title>igekBuy登录</title>  
    
      
</head>  

<body background="img/load.jpg">  
    <div id="login">  
        <h1>Login</h1>  
        <form   action=" <%=basePath%>/load" method="post">  
            <input id="uname"   name="uname"  type="text" required="required" placeholder="用户名" ></input> 
            <input id="psw"   name="psw"  type="password" required="required" placeholder="密码" ></input>  
            <button class="but" type="submit">登录</button>  
        </form>  
        <br><br>
        
        
    </div>  
</body>  
</html>  