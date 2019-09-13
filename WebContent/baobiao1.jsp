<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	
	<script type="text/javascript" src="js/echarts.js"></script>
	
</head>
<body>

	
	 <div id="main" style="width: 500px;height:400px;float: left;"></div>
	  <div id="main2" style="width: 500px;height:400px;float: left;"></div>
	  <div id="main3" style="width: 600px;height:400px;"></div>
	 
	 
	 <script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main'));

        myChart.setOption({
            title: {
                text: '分类销量柱状图'
            },
            tooltip: {},
            legend: {
                data:['销量']
            },
            xAxis: {
                data: [],
                axisLabel: {
					interval: 0,    //强制文字产生间隔
				    rotate: 45,     //文字逆时针旋转45°
					textStyle: {    //文字样式
					            color: "black",
					            fontSize: 16,
					            fontFamily: 'Microsoft YaHei'
					            }
				   }

            },
            yAxis: {},
            series: [{
                name: '销量',
                type: 'bar',
                data: []
            }]
        });
        
        $.ajax({
            url:'baobiao',
            type:'post',
            async: false,
            cache:false,
            success : function(data) {  
      
            	 /* alert(data.length); */
            	 var xdata=new Array();
            	 var ydata=new Array();
            	 var size=data.length
            	 for(i=0;i<size;i++){
            		 if (data[i].category!== undefined){
            			 /* alert(data[i].category); */
            			 xdata[i]=data[i].category; 
            		 } 
            		 if (data[i].num!== undefined){
            			 /* alert(data[i].num); */ 
            			 ydata[i]=data[i].num; 
            		 } 
            		 /* ydata[i]=data[i].num; 
            		 alert(data[i].category);
            		 alert(data[i].num); */
            	 }
            	/*  alert(xdata);
            	 alert(ydata); */
            	myChart.setOption({
                    xAxis: {
                        data: xdata
                    },
                    series: [{
                        // 根据名字对应到相应的系列
                        name: '销量',
                        data: ydata
                    }]
                });
            },  
            error : function(errorMsg) {  
                alert("不好意思，图表请求数据失败啦!");  
                myChart.hideLoading();  
            }  
        });
        
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main2'));

        myChart.setOption({
            title: {
                text: '分类销量'
            },
            tooltip: {},
            legend: {
                data:['销量']
            },
            xAxis: {
                data: [],
                axisLabel: {
					interval: 0,    //强制文字产生间隔
				    rotate: 45,     //文字逆时针旋转45°
					textStyle: {    //文字样式
					            color: "black",
					            fontSize: 16,
					            fontFamily: 'Microsoft YaHei'
					            }
				   }

            },
            yAxis: {},
            series: [{
                name: '销量',
                type: 'bar',
                data: []
            }]
        });
        
        $.ajax({
            url:'baobiao2',
            type:'post',
            async: false,
            cache:false,
            success : function(data) {  
      
            	 /* alert(data.length); */
            	myChart.setOption({
                    series: [{
                    	 name: '访问来源',
                         type: 'pie',
                         radius: '55%',
                         data:data
                    }]
                });
            },  
            error : function(errorMsg) {  
                alert("不好意思，图表请求数据失败啦!");  
                myChart.hideLoading();  
            }  
        });
        
     // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main3'));

        myChart.setOption({
        	
        	
        	
        	
            title: {
                text: '日销量'
            },
            tooltip: {},
            legend: {
                data:['销量']
            },
            xAxis: {
                data: [],
                axisLabel: {
					interval: 0,    //强制文字产生间隔
				    rotate: 45,     //文字逆时针旋转45°
					textStyle: {    //文字样式
					            color: "black",
					            fontSize: 12,
					            fontFamily: 'Microsoft YaHei'
					            }
				   }

            },
            yAxis: {},
            series: [{
                name: '销量',
                type: 'bar',
                data: []
            }]
        });
        
        $.ajax({
            url:'baobiao3',
            type:'post',
            async: false,
            cache:false,
            success : function(data) {  
      
            	 var xdata=new Array();
            	 var ydata=new Array();
            	 var size=data.length
            	 for(i=0;i<size;i++){
            		 if (data[i].name!== undefined){
            			 /* alert(data[i].name);  */
            			 xdata[i]=data[i].name; 
            		 } 
            		 if (data[i].value!== undefined){
            			 /* alert(data[i].num); */ 
            			 ydata[i]=data[i].value; 
            		 } 
            		 /* ydata[i]=data[i].num; 
            		 alert(data[i].category);
            		 alert(data[i].num); */
            	 }
            	/*  alert(xdata);
            	 alert(ydata); */
            	myChart.setOption({
            		
            		 xAxis: {
             	        type: 'category',
             	        data: xdata
             	    },
             	    yAxis: {
             	        type: 'value'
             	    },
             	    series: [{
             	        data: ydata,
             	        type: 'line'
             	    }]
            		
                });
            },  
            error : function(errorMsg) {  
                alert("不好意思，图表请求数据失败啦!");  
                myChart.hideLoading();  
            }  
        });
    </script>
    

</body>
</html>