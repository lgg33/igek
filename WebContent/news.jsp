<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="js/jquery-easyui-1.7.0/themes/default/easyui.css"/>
		<link rel="stylesheet" type="text/css" href="js/jquery-easyui-1.7.0/themes/icon.css"/>
		<link rel="stylesheet" href="js/kindeditor/themes/default/default.css"/>
	    <script charset="utf-8" src="js/kindeditor/kindeditor-all-min.js"></script>
		<script type="text/javascript" src="js/kindeditor/lang/zh-CN.js"></script>
		<script type="text/javascript" src="js/jquery-easyui-1.7.0/jquery.easyui.min.js"></script>
</head>
<body>
		 <form id="ffnews" enctype="multipart/form-data" method="post">
		 
		 	
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
		    	   if($("#ffnews").form('validate')){
		    		   $('#ffnews').form('submit', {
			   	    	    url:'thenews/addnews',
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