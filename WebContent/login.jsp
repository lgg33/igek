<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="utf-8">
		<title>easyui</title>
		<link rel="stylesheet" type="text/css" href="js/jquery-easyui-1.7.0/themes/default/easyui.css"/>
		<link rel="stylesheet" type="text/css" href="js/jquery-easyui-1.7.0/themes/icon.css"/>
		<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
		<script type="text/javascript" src="js/jquery-easyui-1.7.0/jquery.easyui.min.js"></script>
		
		<script type="text/javascript">
		function test1(){
			//$.messager.progress();
			$('#loginform').form('submit', {
	    	    url:'login?'+new Date().getTime(),
	    	    onSubmit: function(){
	    	    	if($(":text:eq(0)").val()==""){
						alert("null");
						return false
					}
	    	    	//var isValid = $(this).form('validate');
	    			//if (!isValid){
	    				//$.messager.progress('close');	// hide progress bar while the form is invalid
	    			//}
	    			//return isValid;	// return false will stop the form submission
	    	    	
	    	    	
	    			// do some check
	    			// return false to prevent submit;
	    	    },
	    	    success:function(data){
	    	    	//alert(data);
	    	    	
	    	    	if(data=="1"){
	    	    		/* alert(data); */
	    	    		location.href="main.jsp";
	    	    	}else{
	    	    		alert("登录失败！");
	    	    		location.href="login.jsp";
	    	    	}
	    	    	//$.messager.progress('close');
	    	    	
	    	    	/* var data = eval('(' + data + ')');
	    			if (data.success){
	    				alert(data.message)
	    			} */
	    	    }
	    	});
		}
			
		/* $(function(){
			$('#login1').bind('click', function(){
				$('#loginform').form('submit',{
					url:'login',
					onSubmit:function(){
						if($(":text:eq(0)").val()==""){
							$.message.alert("null");
							return false
						}
					}
					success:function(data){
						alert(data);
						if(data=="1"){
							alert("success");
						}else(data=="0"){
							alert("false");
						}
					}
				
				})
		    });
			
		}) */
			/* $(function(){
				$('#login1').click(function(){
					$('#loginform').form('submit', {
						url:'login',
						onSubmit: function(){
							if($(":text:eq(0)").val()==""){
								$.message.alert("null");
								return false;
							}
							else if($(":password:eq(0)").val()==""){
								$.message.alert("pnull");
								return false;
							}
							
						},
						success:function(data){
							alert(data);
							if(data=="1"){
								$.message.alert("null");
							}else{
								$.message.alert("fnull");
							}
						}
					});
				})
				
			})  */
			
			
			$(function(){  
				 
				 $('#p').panel('move',{
					 left:100,
					    top:100
					}); 
			 }) 
		</script>
	</head>
	<style type="text/css">
		.my-login{
			background:url(images/loin2.jpg) no-repeat center center;
		}
	</style>
	<body>
	<center>
		<div id="p" class="easyui-panel" title="登录" 
			style="width:500px;height:280px;padding:10px;background:#fafafa;"
			data-options="iconCls:'my-login',closable:true,
			collapsible:true,minimizable:true,maximizable:true">
			<form action="" method="post" id="loginform">
				<table  style="width: 300px; height: 170px; " align="center">
					<tr>
						<td colspan="2" align="center" style="font-size: 20px; font-weight: bold;">后台管理系统</td>
					</tr>
					<tr>
						<td width="75px" style="font-size: 16px;">用户名：</td>
						<td><input type="text" name="name" id="inp1" value="" /></td>
					</tr>
					<tr>
						<td style="font-size: 16px;">密码：</td>
						<td><input type="password" name="password" id="inp2" value="" /></td>
					</tr>
					<tr>
						<td colspan="2" align="right"><a id="login1" class="easyui-linkbutton" data-options="iconCls:'icon-ok'" onclick="test1()">登录</a></td>
						
					</tr>
				</table>
			</form>
		</div>
		</center>
	</body>
	
</html>