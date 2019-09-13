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
<body>'
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

	<script type="text/javascript">
	
	$(function(){
		$('#add_datagridur').datagrid({
		    url:'showuser',
		    columns:[[
				{field:'uid',title:'用户id',width:100,hidden:true},
				{field:'uname',title:'用户名',width:100},
				{field:'sex',title:'性别',width:100},
				/* {field:'sex',title:'性别',formatter:function(value, row, index){
							//alert(value);
							if(value != undefined){
								//alert(value);
								return "<img style='width:35px;height:35px;' border='1' src='images/"+value+"' />";
							}
					}
				}, */
				{field:'tel',title:'手机号',width:100},
				{field:'uage',title:'年龄',width:100},
				{field:'date',title:'注册时间',width:100},
				/* {field:'country_name',title:'国家',width:100}, */
				/* {field:'gshow',title:'描述',width:100,align:'right'}, */
				/* {field:'sort1',title:'操作',width:100,
					formatter: function(value,row,index){
						return "aaa";
					}
				}, */
		    ]],
		    pagination:true,
		    pageList:[2,4,6,8,10],
		    striped:true,
		    fitColumns:true,
		    //singleSelect:true,
		    rownumbers:true,
		   
		});
	})
	
	
</script>



	<table id="add_datagridur"></table>

	
</body>
</html>