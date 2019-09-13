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

<script type="text/javascript">
	
	$(function(){
		$('#add_datagrid').datagrid({
		    url:'showadd',
		    columns:[[
				{field:'gid',title:'编号',width:100,hidden:true},
				{field:'url',title:'图片',formatter:function(value, row, index){
							//alert(value);
							if(value != undefined){
								//alert(value);
								return "<img style='width:35px;height:35px;' border='1' src='images/"+value+"' />";
							}
					}
				},
				{field:'gname',title:'名称',width:100},
				{field:'price',title:'价格',width:100},
				{field:'tex',title:'税务',width:100},
				{field:'country_name',title:'国家',width:100},
				{field:'gshow',title:'描述',width:100,align:'right'},
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
		    toolbar: [{
				iconCls: 'icon-remove',
				text:"删除",
				handler: function(){
					var rows= $('#add_datagrid').datagrid('getSelections');
					for(var i=0;i<rows.length;i++){
						var row=rows[i];
						//alert(row.id);
						$.ajax({
							        type:"GET",
							        url:"delgoods?gid="+row.gid,
							        //dataType:"json", 预期服务器返回数据的类型
							        success:function(data){
							           if(data==1){
							              window.location.href='main.jsp';
							           }else{
							               alert("error");
							           }
							        },
							        error:function(jqXHR){
							           aler("发生错误：");
							        }
								});
					}
				}
			},'-',{
				iconCls: 'icon-edit',
				text:"修改",
				handler: function(){
					if($("#add_datagrid").datagrid("getSelections").length==1){
						$('#add_dialog').dialog({
						    title: '修改信息',
						    width: 250,
						    height: 300,
						    closed: false,
						    cache: false,
						    href: 'dialog_add.jsp',
						    modal: true,
						    onLoad:function(){
						    	$("#dia_form :text:eq(0)").val($('#add_datagrid').datagrid("getSelected").gname);
						    	$("#dia_form :text:eq(1)").val($('#add_datagrid').datagrid("getSelected").price);
						    	$("#dia_form :text:eq(2)").val($('#add_datagrid').datagrid("getSelected").tex);
						    	$("#dia_form :text:eq(3)").val($('#add_datagrid').datagrid("getSelected").country_name);
						    	$("#dia_form :text:eq(4)").val($('#add_datagrid').datagrid("getSelected").gshow);
						    	$("#dia_form :hidden:eq(0)").val($('#add_datagrid').datagrid("getSelected").gid);
						    	
						    }
						});
					}else{
						$.messager.alert("系统信息","请选择<b style='color:red'>一行</b>")
					}
					
				}
			}/* ,'-',{
				iconCls: 'icon-search',
				text:"查看",
				handler: function(){alert('help')}
			
			} */]
		});
	})
	
	function doSearch(){
		//var ggid=$("#gid").val();
		/* alert("a"); */
		var gid="gid="+$("#gid").val();
		//var ggname=
		var gname="&gname="+$("#gid2").val();
		var ggurl='selby?'+gid+gname;
		var gurl=encodeURIComponent(ggurl);
		var gurl=decodeURIComponent(gurl);
		//location.href="selbyid?gid="+gid;
		$('#add_datagrid').datagrid({
		    url:gurl,
		    columns:[[
				{field:'gid',title:'编号',width:100,hidden:true},
				{field:'url',title:'图片',formatter:function(value, row, index){
							//alert(value);
							if(value != undefined){
								//alert(value);
								return "<img style='width:35px;height:35px;' border='1' src='images/"+value+"' />";
							}
					}
				},
				{field:'gname',title:'名称',width:100},
				{field:'price',title:'价格',width:100},
				{field:'tex',title:'税务',width:100},
				{field:'country_name',title:'国家',width:100},
				{field:'gshow',title:'描述',width:100,align:'right'},
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
		    toolbar: [{
				iconCls: 'icon-remove',
				text:"删除",
				handler: function(){
					var rows= $('#add_datagrid').datagrid('getSelections');
					for(var i=0;i<rows.length;i++){
						var row=rows[i];
						//alert(row.id);
						$.ajax({
							        type:"GET",
							        url:"delgoods?gid="+row.gid,
							        //dataType:"json", 预期服务器返回数据的类型
							        success:function(data){
							           if(data==1){
							              window.location.href='main.jsp';
							           }else{
							               alert("error");
							           }
							        },
							        error:function(jqXHR){
							           aler("发生错误：");
							        }
								});
					}
				}
			},'-',{
				iconCls: 'icon-edit',
				text:"修改",
				handler: function(){
					if($("#add_datagrid").datagrid("getSelections").length==1){
						$('#add_dialog').dialog({
						    title: '修改信息',
						    width: 900,
						    height: 500,
						    closed: false,
						    cache: false,
						    href: 'dialog_add.jsp',
						    modal: true,
						    onLoad:function(){
						    	$("#dia_form :text:eq(0)").val($('#add_datagrid').datagrid("getSelected").gname);
						    	$("#dia_form :text:eq(1)").val($('#add_datagrid').datagrid("getSelected").price);
						    	$("#dia_form :text:eq(2)").val($('#add_datagrid').datagrid("getSelected").tex);
						    	$("#dia_form :text:eq(3)").val($('#add_datagrid').datagrid("getSelected").country);
						    	$("#dia_form :text:eq(4)").val($('#add_datagrid').datagrid("getSelected").gshow);
						    	$("#dia_form :hidden:eq(0)").val($('#add_datagrid').datagrid("getSelected").gid);
						    	
						    }
						});
					}else{
						$.messager.alert("系统信息","请选择<b style='color:red'>一行</b>")
					}
					
				}
			}/* ,'-',{
				iconCls: 'icon-search',
				text:"查看",
				handler: function(){alert('help')}
			
			} */]
		});
		
	}
</script>
<div id="tb" style="padding:3px">
	<span>商品 ID:</span>
	<input type="text" id="gid" name="goodsid" style="line-height:26px;border:1px solid #ccc">
	<span>商品名称:</span>
	<input id="gid2" name="goodsname" style="line-height:26px;border:1px solid #ccc">
	<a class="easyui-linkbutton" plain="true" onclick="doSearch()">查看</a>
</div>
<table id="add_datagrid"></table>
<div id="add_dialog"></div>
</body>
</html>