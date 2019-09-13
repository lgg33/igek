<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" type="text/css" href="js/jquery-easyui-1.7.0/themes/default/easyui.css"/>
	<link rel="stylesheet" type="text/css" href="js/jquery-easyui-1.7.0/themes/icon.css"/>
	
	<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
	<script type="text/javascript" src="js/jquery-easyui-1.7.0/jquery.easyui.min.js"></script> 
	
</head>
<body>
     <%  
              if(session.getAttribute("admin") == null) {    
    %>  
           <script type="text/javascript" language="javascript">      
             alert("您还没有登录，请登录..."); 
            top.location.href="login.jsp";
            </script> 
    <%  
        }  
    %>  
	<jsp:include page="baobiao1.jsp"/>

</body>
</html>