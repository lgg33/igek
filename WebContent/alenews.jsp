<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	
<form id="ffanew" enctype="multipart/form-data" method="post">
		 
		 <div style="margin-bottom:20px">
                <input class="easyui-textbox" name="nid" style="width:60%" data-options="label:'id:'">
            </div>
		 	
 			<div style="margin-bottom:20px">
                <input class="easyui-textbox" name="newsname" style="width:60%" data-options="label:'标题:'">
            </div>
            <div style="margin-bottom:20px">
                <input class="easyui-textbox" name="newsclass" style="width:60%" data-options="label:'分类:'">
            </div>
            

             <div class="easyui-texteditor" name="content" title="正文" style="width:700px;height:300px;padding:20px">
				
		           
		     </div>
		     
		     
		     <a class="easyui-linkbutton" onclick="test()" style="width:80px">提交</a>
		   </form>
		     
		     <script type="text/javascript">
		     
		    
		     
		     function test(){
		    	   if($("#ffanew").form('validate')){
		    		   $('#ffanew').form('submit', {
			   	    	    url:'thenews/xgnews',
			   	    	    onSubmit: function(){
			   	    	        	
			   	    	    },
			   	    	    success:function(data){
			   	    	    	alert("成功！");
					   	    	location.href="main.jsp";
			   	    	    
			   	    	    }
			   	    	});
		    	   	}else{
		    			$.messager.alert('操作提示','存在校验项未通过！',"warning");
		    		}
				}
		     
		     </script>
</body>
</html>