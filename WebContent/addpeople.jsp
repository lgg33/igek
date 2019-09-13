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

 	<div class="easyui-panel" title="输入信息" style="width:100%;max-width:400px;padding:30px 60px;">
        <form id="fromupdp" method="post">
            <table class="tableForm" style="margin-bottom: 15px">
            	<tr>
            		<th width="80px" height="35px">旧密码:</th>
            		<td>
            			<input class="easyui-validatebox" name="opassword" required="true" type="password" missingMessage="请填写旧密码">
            		</td>
            	</tr>
                <tr>
                    <th width="80px" height="35px">新密码:</th>
                    <td><input id="password" name="password" type="password" class="easyui-validatebox" validType="length[4,32]" required="true" missingMessage="请填写新密码" /></td>

                </tr>
                <tr>
                    <th width="80px" height="35px">确认密码:</th>
                    <td><input id="repassword" name="repassword" type="password" class="easyui-validatebox" required="true" missingMessage="请再次填写新密码" validType="eqPassword['#password']" /></td>
                </tr>
            </table>
        </form>
        <div style="text-align:center;padding:5px 0">
            <a class="easyui-linkbutton" onclick="test()" style="width:80px">提交</a>
            <a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()" style="width:80px">重置</a>
        </div>
    </div>
    
    <script type="text/javascript">
       $.extend($.fn.validatebox.defaults.rules, {  
           	eqPassword:{  
	           validator:function(value, param) {  
	               return value == $(param[0]).val();  
	           },  
          	message : '两次输入密码不一致！'  
       		}  
   		});
       function test(){
    	  if($("#fromupdp").form('validate')){
			$('#fromupdp').form('submit', {
	    	    url:'updatepw?'+new Date().getTime(),
	    	    onSubmit: function(){
	    	  	    	    	
	    	    },
	    	    success:function(data){
	    	    	
	    	    	if(data==1){
	    	    		alert("修改成功！");
	    	    		location.href="login.jsp";
	    	    	}else{
	    	    		alert("修改失败！");
	    	    		location.href="main.jsp";
	    	    	}
	    	    
	    	    }
	    	});
		}else{
			$.messager.alert('操作提示','存在校验项未通过！',"warning");
		}
       }
       function clearForm(){
	        $('#fromupdp').form('clear');
	    }
	    
		</script>
</body>

</html>