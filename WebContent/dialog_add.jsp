<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
<script type="text/javascript">
	$(function(){
		 
   	 	$('#coun2').combobox({
		    url:'selcountry',
		    prompt:'请选择',
		    valueField:'id',
		    textField:'country_name'
			});
		
		$('#alert1').bind('click', function(){
			$('#dia_form').form('submit', {
			    url:"updadd",
			    onSubmit: function(){
					// do some check
					// return false to prevent submit;
			    },
			    success:function(data){
			    	if(data=="1"){
	    	    		/* alert(data); */
	    	    		//$.messager.alert('My Title','Here is a info message!','info');
			    		/* $.messager.show({
			    			title:'My Title',
			    			msg:'修改成功',
			    			timeout:1000,
			    			showType:'slide'
			    		}); */
			    		//alert("修改成功");
			    		location.reload();
	    	    	}else{
	    	    		alert("修改失败！");
	    	    		location.href="login.jsp";
	    	    	}
			    }
			});
	    });
		
	})
</script>
<div>
	系统设置>>修改信息
	<hr>
	<form action="" method="post" id="dia_form">
		<input type="hidden" name="gid">
		<table>
			<!-- <tr>
				<td>图片</td>
				<td><input class="easyui-filebox" name="file"  data-options="prompt:'Choose a photo'"></td>
			</tr> -->
			
			<tr>
				<td>名称</td>
				<td><input type="text" name="gname"></td>
			</tr>
			<tr>
				<td>价格</td>
				<td><input type="text" name="price" value=""></td>
			</tr>
			<tr>
				<td>税务</td>
				<td><input type="text" name="tex" value=""></td>
			</tr>
			
			<tr>
				<td>国家</td>
				<td><input id="coun2" name="country" value="" style="width:60%" data-options="required:true"></td>
			</tr>
			<tr>
				<td>描述</td>
				<td><input type="text" name="gshow" value=""></td>
			</tr>
			<tr>
				<td colspan="2" align="right"><a id="alert1" class="easyui-linkbutton" data-options="iconCls:'icon-edit'">修改</a>
				</td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>