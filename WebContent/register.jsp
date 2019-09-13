<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path ;
	%>
<!DOCTYPE html>
<html>
	<head>
			<meta charset="utf-8" />
			<meta http-equiv="X-UA-Compatible" content="IE=edge">
			<meta name="viewport" content="width=device-width, initial-scale=1">
			<link rel="stylesheet" href="css/bootstrap.css" />
			<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
			<link rel="stylesheet" type="text/css" href="css/bootstrap-theme.css"/>
			<link rel="stylesheet" type="text/css" href="css/country.css"/>
			<script src="js/jquery.min.js"></script>
			<script src="js/bootstrap.js"></script>
			<script src="js/bootstrap.min.js"></script>	
			<title>igekBuy注册</title>
			<style type="text/css">
				/* html{   
					    width: 100%;   
					    height: 100%;   
					    overflow: hidden;   
					    font-style: sans-serif;   
					}   
					body{   
					    width: 100%;   
					    height: 100%;   
					    font-family: 'Open Sans',sans-serif;   
					    margin: 0;   
					}   
					#login{   
					    position: absolute;   
					    top: 50%;   
					    left:50%;   
					    margin: -150px 0 0 -150px;   
					    width: 300px;   
					    height: 300px;   
					}  
					
					#login1{   
					    position: fixed;   
					    top: 30%;   
					    left:50%;   
					    margin: -150px 0 0 -150px;   
					    width: 500px;   
					    height: 300px;   
					}    
					#login h1{   
					    color: #fff;   
					    text-shadow:0 0 10px;   
					    letter-spacing: 1px;   
					    text-align: center;   
					}   
					h1{   
					    font-size: 2em;   
					    margin: 0.67em 0;   
					}   
					input{   
					    width: 278px;   
					    height: 18px;   
					    margin-bottom: 10px;   
					    outline: none;   
					    padding: 10px;   
					    font-size: 13px;   
					    color: #fff;   
					    text-shadow:1px 1px 1px;   
					    border-top: 1px solid #312E3D;   
					    border-left: 1px solid #312E3D;   
					    border-right: 1px solid #312E3D;   
					    border-bottom: 1px solid #56536A;   
					    border-radius: 4px;   
					    background-color: #2D2D3F;   
					}   
					.but{   
					    width: 300px;   
					    min-height: 20px;   
					    display: block;   
					    background-color: #4a77d4;   
					    border: 1px solid #3762bc;   
					    color: #fff;   
					    padding: 9px 14px;   
					    font-size: 15px;   
					    line-height: normal;   
					    border-radius: 5px;   
					    margin: 0;   
					}  
			 */
			 
			 #div{
				/* border: solid 1px royalblue; */
				width: 520px;
				height: 500px;
				margin-left:550px;
				margin-top: 170px;
			}
			#ta1{
				font-size: 15px;
				margin: auto;
				margin-top: 30px;
			}
			 body{
				background-image: url(img/load.jpg);
			}  
			</style>
			
			<script type="text/javascript">
			
			
			function checkpwd2(){
				var a=document.getElementById("psw1");
				var b=document.getElementById("psw22");
				var c=document.getElementById("sppwd2");
				if(b.value==null||b.value==""){
					c.innerHTML="确认密码不能为空";
					c.style.color="red"
					b.style.border="solid 1px red";
					return false;
				}else if(a.value==b.value){
					c.innerHTML=""
					b.style.border="solid 1px springgreen";
					return true;
				}else{
					c.innerHTML="两次输入密码不相同";
					c.style.color="red"
					b.style.border="solid 1px red";
					return false;
				}
			}
			
			function fengzhuang(val,reg,sp){
				if(reg.test(val.value)){
					sp.innerHTML="";
					val.style.border="solid 1px springgreen"
					return true;
				}else{
					sp.innerHTML=val.alt+"输入错误";
					sp.style.color="red";
					val.style.border="solid 1px red"
					return false;
				}
			}
			
			function checkpwd(){
				return fengzhuang(document.getElementById("psw1"),/^[\w_-]{3,16}$/,document.getElementById("sppwd"));
			}
			
			function checkpho(){
				return fengzhuang(document.getElementById("tel1"),/^((13[0-9])|(14[5|7])|(15([0-3]|[5-9]))|(18[0,5-9]))\d{8}$/,document.getElementById("sppho"));
			}
			
			function checkage(){
				return fengzhuang(document.getElementById("uage1"),/^(?:[1-9]?\d|150)$/,document.getElementById("spage"))
			}
			
			function checkxieyi(){
				document.getElementById("su1").disabled=!document.getElementById("ch1").checked;
				pdff();
			}
			function checksub(){
				
				return checkpwd()&&checkpwd2()&&checkpho()&&checkage();	
				/* alert(checkname()&&checkpwd()&&checkpwd2()&&checkpho()&&checkemail()&&checkcode());
				alert(checkpwd()) */
			}
			
			function pdff() {
				   	var uname = $("#uname1").val();
					var a=document.getElementById("uname1");
					var b=document.getElementById("spname");
					var c=document.getElementById("su1");
					   $.ajax({
					    type : "POST", //数据传输的方式
					    url : "jiaoyanuser", //进行判断的地址值
					    data : "name=" + uname, //使用(key,value)方式传递数据
					    dataType : "json", //文件类型
					    success : function(data) {
					     if (data==1) {
							b.style.color="red"; 
					      $("#spname").html("用户已存在");
							/* location.href="selAll"; */
							
							a.style.border="solid 1px red";
							c.disabled="disabled";
					     } else {
							if(a.value==null||a.value==""){
								b.innerHTML="用户名不能为空";
								b.style.color="red"
								a.style.border="solid 1px red";
								c.disabled="disabled";
							}else{
								$("#spname").html("");
								a.style.border="solid 1px springgreen";
						      	/* $("#spname").html("用户可以注册"); */
								c.disabled=false;
								checkxieyi();
								
							}
					     }
					    }
					   });
					  }
			
			
			</script>
	</head>
	
<body>
<div id="div">
		
	<form class="form-horizontal" action="regist">
	  <div class="form-group">
	    <label for="inputEmail3" class="col-sm-2 control-label" >用户名</label>
	    <div class="col-sm-10" >
	      <input type="text" class="form-control" id="uname1"  name="uname" placeholder="用户名" onblur="pdff()" style="width: 200px">
	      <span id="spname" style="color: red"></span>
	    </div>
	  </div>
	  <div class="form-group">
	    <label for="inputPassword3" class="col-sm-2 control-label">密码</label>
	    <div class="col-sm-10">
	      <input type="password" class="form-control" id="psw1"  name="psw" placeholder="密码" onblur="checkpwd()"  style="width: 200px">
	      <span id="sppwd"></span>
	    </div>
	  </div>
	  
	  <div class="form-group">
	    <label for="inputPassword3" class="col-sm-2 control-label">确认密码</label>
	    <div class="col-sm-10">
	      <input type="password" class="form-control" id="psw22" name="psw2" placeholder="确认密码" onblur="checkpwd2()" style="width: 200px">
	      <span id="sppwd2"></span>
	    </div>
	  </div>
	  
	  <div class="form-group">
	    <label for="inputPassword3" class="col-sm-2 control-label">手机号</label>
	    <div class="col-sm-10">
	      <input type="text" class="form-control" id="tel1" name="tel" onblur="checkpho()" placeholder="手机号" style="width: 200px">
	      <span id="sppho"></span>
	    </div>
	  </div>
	  
	  <div class="form-group">
	  <label for="inputPassword3" class="col-sm-2 control-label">性别</label>
	  <div class="col-sm-10" >
	      <select class="form-control" id="sex1" name="sex" style="width: 200px;">
			  <option value="男">男</option>
			  <option value="女">女</option>
			</select>
			<span id="spsex"></span>
	   </div>
	    
	  </div>
	  
	   <div class="form-group">
	    <label for="inputPassword3" class="col-sm-2 control-label">年龄</label>
	    <div class="col-sm-10">
	      <input type="text" class="form-control" id="uage1" name="uage" onblur="checkage()" placeholder="年龄" style="width: 200px">
	      <span id="spage"></span>
	    </div>
	  </div>
	  

<!-- <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-lg">Large modal</button> -->

<!-- <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      ...
    </div>
  </div>
</div> -->


	    
	 <div class="checkbox" style="padding-left: 95px">
	  
	    <input type="checkbox" id="ch1" value="" onclick="checkxieyi()">
	    	<span class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-lg">是否同意本公司协议</span> 
	  
	</div>
	  	
	 
	  <div class="form-group" style="padding-left: 50px;padding-top: 20px">
	    <div class="col-sm-offset-2 col-sm-10">
	      <button type="submit" id="su1" class="btn btn-default" disabled="disabled" onclick="return checksub()">确定</button>
	    </div>
	  </div>
	</form>

</div>		

		
</body>
</html>