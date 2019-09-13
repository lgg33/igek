<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>easyui</title>
	<link rel="stylesheet" type="text/css" href="js/jquery-easyui-1.7.0/themes/default/easyui.css"/>
	<link rel="stylesheet" type="text/css" href="js/jquery-easyui-1.7.0/themes/icon.css"/>
	<link rel="stylesheet" type="text/css" href="js/jquery-easyui-1.7.0/jquery-easyui-texteditor/texteditor.css"/>
	<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
	<script type="text/javascript" src="js/jquery-easyui-1.7.0/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="js/jquery-easyui-1.7.0/jquery-easyui-texteditor/jquery.texteditor.js"></script>
	<script type="text/javascript">
		$(function(){
			$('#tt').tree({
			    url:'show',
			    onClick:function(node){
			    	if($("#main_tabs").tabs("getTab",node.text)==null){
			    		//alert(node.attributes.filename);
				    	$("#main_tabs").tabs('add',{
				    		title:node.text,
				    		selected:true,
				    		//content:"<b>asdad</b>"
				    		href:node.attributes.filename,
				    		closable:true,
				    	})
			    	}else{
			    		$("#main_tabs").tabs("select",node.text)
			    	}
			    	
			    },
			});
		})
	</script>
</head>
<body class="easyui-layout">
	
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

    <div data-options="region:'north',title:'后台管理系统',split:false" style="height:100px;">
    	<div style="width:400px;height:67px;float:left;line-height:67px;font-size:18px;font-weight:bold;padding-left:20px"">
    		后台管理系统
    	</div>
    	<div style="width:200px;height:67px;float:right;line-height:67px">
    	您好，${admin.name}，欢迎您&nbsp;&nbsp;<a href="exit" style="text-decoration: none;">退出系统</a>
    	</div>
    </div>
    <div data-options="region:'south',title:'底部声明',split:false" style="height:100px;">
    	<div style="height:67px;line-height:67px;text-align:center;color:gray">
    		Copyright &copy; 2019 WBU16
    	</div>
    </div>
    <div data-options="region:'west',title:'菜单'" style="width:200px;">
    	<ul id="tt"></ul>
    </div>
    <div data-options="region:'center',title:'内容'" style="padding:5px;background:#eee;">
   		<div id="main_tabs" class="easyui-tabs" style="width:500px;height:250px;" data-options="fit:'true'">
    	<div title="Tab1" style="padding:20px;">
			<h1>欢迎您，<span style="color: red;">${sessionScope.admin.name }</span></h1>
			
    	</div>
		</div>
    </div>
</body>
</html>