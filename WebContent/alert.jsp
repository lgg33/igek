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

 	<div class="easyui-panel" title="商品" style="width:100%;max-width:900px;padding:30px 60px;">
        <form id="ff" enctype="multipart/form-data" method="post">
        	<div style="margin-bottom:20px">
                <input class="easyui-filebox" name="file" label="图片：" labelPosition="top" data-options="prompt:'Choose a photo',onChange:change_photo" style="width:60%">
            </div>
            <div id="Imgdiv">
            	<img id="Img" width="200px" height="200px"/>
            </div>
            <div style="margin-bottom:20px">
                <input class="easyui-textbox" name="gname" style="width:60%" data-options="label:'名称:',required:true">
            </div>
            <div style="margin-bottom:20px">
                <input class="easyui-textbox" name="price" style="width:60%" data-options="label:'价格',required:true">
            </div>
            
            <div style="margin-bottom:20px">
                <input class="easyui-textbox" name="tex" style="width:60%" data-options="label:'税务',required:true">
            </div>
            <div style="margin-bottom:20px">
            	<input id="cc" name="gclass" value="" style="width:30%" data-options="label:'分类',required:true">
            </div>
             <!-- <div style="margin-bottom:20px">
	            <select class="easyui-combobox" name="gclass" label="分类" labelPosition="top" style="width:100%;">
	                <option value="1">手机数码</option>
	                <option value="2">电脑办公</option>
	                <option value="3">家用电器</option>
	                <option value="4">女装</option>
	                <option value="5">男装</option>
	                <option value="6">男鞋</option>
	                <option value="7">女鞋</option>
	                <option value="8">美妆护肤</option>
	            </select>
	        </div> -->
	        
	        <div style="margin-bottom:20px">
            	<input id="coun" name="country" value="" style="width:30%" data-options="label:'国家',required:true">
            </div>
            
            <!-- <div style="margin-bottom:20px">
                <input class="easyui-textbox" name="country" style="width:100%" data-options="label:'国家',required:true">
            </div> -->
            
            <!-- <div style="margin-bottom:20px">
                <input class="easyui-textbox" name="gshow" style="width:60%" data-options="label:'描述',required:true,multiline:true">
            </div> -->
            <!-- <input type="submit" value="提交"> -->
            <div class="easyui-texteditor" name="gshow" title="描述" style="width:700px;height:300px;padding:20px">
				
		           
		     </div>
		     
		     <!-- <textarea id="editor_id" name="gshow" style="width:700px;height:300px;">
			
			</textarea> -->
            
        </form>
        <div style="text-align:center;padding:5px 0">
        	
           	<a class="easyui-linkbutton" onclick="test()" style="width:80px">提交</a>
            <a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()" style="width:80px">重置</a>
        </div>
       <script>
       
       $(function(){ 
    	 $('#cc').combobox({
    		    url:'selcategory',
    		    prompt:'请选择',
    		    valueField:'cid',
    		    textField:'cname'
    		});
    	 
    	 $('#coun').combobox({
 		    url:'selcountry',
 		    prompt:'请选择',
 		    valueField:'id',
 		    textField:'country_name'
 			});
    	 
    	 }); 
       
       function change_photo(){
           PreviewImage($("input[name='file']")[0], 'Img', 'Imgdiv');
       }

       function PreviewImage(fileObj,imgPreviewId,divPreviewId){  
	   	    var allowExtention=".jpg,.bmp,.gif,.png";//允许上传文件的后缀名document.getElementById("hfAllowPicSuffix").value;  
	   	    var extention=fileObj.value.substring(fileObj.value.lastIndexOf(".")+1).toLowerCase();              
	   	    var browserVersion= window.navigator.userAgent.toUpperCase();  
	   	    if(allowExtention.indexOf(extention)>-1){   
	   	        if(fileObj.files){//HTML5实现预览，兼容chrome、火狐7+等  
	   	            if(window.FileReader){  
	   	                var reader = new FileReader();   
	   	                reader.onload = function(e){  
	   	                    document.getElementById(imgPreviewId).setAttribute("src",e.target.result);  
	   	                }    
	   	                reader.readAsDataURL(fileObj.files[0]);  
	   	            }else if(browserVersion.indexOf("SAFARI")>-1){  
	   	                alert("不支持Safari6.0以下浏览器的图片预览!");  
	   	            }  
	   	        }else if (browserVersion.indexOf("MSIE")>-1){  
	   	            if(browserVersion.indexOf("MSIE 6")>-1){//ie6  
	   	                document.getElementById(imgPreviewId).setAttribute("src",fileObj.value);  
	   	            }else{//ie[7-9]  
	   	                fileObj.select();  
	   	                if(browserVersion.indexOf("MSIE 9")>-1)  
	   	                    fileObj.blur();//不加上document.selection.createRange().text在ie9会拒绝访问  
	   	                var newPreview =document.getElementById(divPreviewId+"New");  
	   	                if(newPreview==null){  
	   	                    newPreview =document.createElement("div");  
	   	                    newPreview.setAttribute("id",divPreviewId+"New");  
	   	                    newPreview.style.width = document.getElementById(imgPreviewId).width+"px";  
	   	                    newPreview.style.height = document.getElementById(imgPreviewId).height+"px";  
	   	                    newPreview.style.border="solid 1px #d2e2e2";  
	   	                }  
	   	                newPreview.style.filter="progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod='scale',src='" + document.selection.createRange().text + "')";                              
	   	                var tempDivPreview=document.getElementById(divPreviewId);  
	   	                tempDivPreview.parentNode.insertBefore(newPreview,tempDivPreview);  
	   	                tempDivPreview.style.display="none";                      
	   	            }  
	   	        }else if(browserVersion.indexOf("FIREFOX")>-1){//firefox  
	   	            var firefoxVersion= parseFloat(browserVersion.toLowerCase().match(/firefox\/([\d.]+)/)[1]);  
	   	            if(firefoxVersion<7){//firefox7以下版本  
	   	                document.getElementById(imgPreviewId).setAttribute("src",fileObj.files[0].getAsDataURL());  
	   	            }else{//firefox7.0+                      
	   	                document.getElementById(imgPreviewId).setAttribute("src",window.URL.createObjectURL(fileObj.files[0]));  
	   	            }  
	   	        }else{  
	   	            document.getElementById(imgPreviewId).setAttribute("src",fileObj.value);  
	   	        }           
	   	    }else{  
	   	        alert("仅支持"+allowExtention+"为后缀名的文件!");  
	   	        fileObj.value="";//清空选中文件  
	   	        if(browserVersion.indexOf("MSIE")>-1){                          
	   	            fileObj.select();  
	   	            document.selection.clear();  
	   	        }                  
	   	        fileObj.outerHTML=fileObj.outerHTML;  
	   	    }  
	   	}


       
       function test(){
    	   if($("#ff").form('validate')){
    		   $('#ff').form('submit', {
	   	    	    url:'insgoods',
	   	    	    onSubmit: function(){
	   	    	        	
	   	    	    },
	   	    	    success:function(data){
	   	    	    	
	   	    	    	if(data=="1"){
	   	    	    		alert("新增成功！");
	   	    	    		location.href="main.jsp";
	   	    	    	}else{
	   	    	    		alert("新增失败！");
	   	    	    		location.href="main.jsp";
	   	    	    	}
	   	    	    
	   	    	    }
	   	    	});
    	   	}else{
    			$.messager.alert('操作提示','存在校验项未通过！',"warning");
    		}
		}
       
       function clearForm(){
	        $('#ff').form('clear');
	    }
	    
		</script>
    </div>
    
</body>
</html>