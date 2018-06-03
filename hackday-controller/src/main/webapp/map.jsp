<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
	<style type="text/css">
		body, html{width: 100%;height: 100%;margin:0;font-family:"微软雅黑";}
		#allmap{height:500px;width:100%;}
		#r-result{width:100%; font-size:14px;}
	</style>
	<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=hNMb4CKscuim6FX0ZYB3akGMckTXhGBj"></script>
	<title>城市名定位</title>
	<style type="text/css">
input{
	transition:all 0.30s ease-in-out;
	-webkit-transition: all 0.30s ease-in-out;
	-moz-transition: all 0.30s ease-in-out;
	
	border:#35a5e5 1px solid;
	border-radius:3px;
	outline:none;
}
input:focus{
	box-shadow:0 0 5px rgba(81, 203, 238, 1);
	-webkit-box-shadow:0 0 5px rgba(81, 203, 238, 1);
	-moz-box-shadow:0 0 5px rgba(81, 203, 238, 1);
}
a{
	text-decoration:none;
	background:rgba(81, 203, 238, 1);
	color:white;padding: 6px 25px 6px 25px;
	font:12px '微软雅黑';
	border-radius:3px;
	
	-webkit-transition:all linear 0.30s;
	-moz-transition:all linear 0.30s;
	transition:all linear 0.30s;
}
a:hover{background:rgba(39, 154, 187, 1);}
</style>
</head>
<body>
    <div id="r-result">
	    <input id="cityName" type="text" placeholder="城市名" style="width:100px; margin-right:10px;" />
	    <input id="longitude" type="text" placeholder="经度" style="width:100px; margin-right:10px;" />
	    <input id="latitude" type="text" placeholder="纬度" style="width:100px; margin-right:10px;" />
	</div>
	</br>
	<div id="r-result">
	    <input type="button" value="查询城市" onclick="theLocation()" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="button" value="查询经纬" onclick="theLocation()" />
	</div>
	<div id="allmap" width=100%  height=100%></div>
</body>
</html>
<script type="text/javascript">

function theLocation(){
	if(document.getElementById("longitude").value != "" && document.getElementById("latitude").value != ""){
		map.clearOverlays(); 
		var new_point = new BMap.Point(document.getElementById("longitude").value,document.getElementById("latitude").value);
		var marker = new BMap.Marker(new_point);  // 创建标注
		map.addOverlay(marker);              // 将标注添加到地图中
		map.panTo(new_point);      
	}
}

	// 百度地图API功能
	var map = new BMap.Map("allmap");
	map.addControl(new BMap.NavigationControl());    
	map.addControl(new BMap.GeolocationControl());    
	map.addControl(new BMap.OverviewMapControl()); 
	
	var point = new BMap.Point(116.331398,39.897445);
	map.centerAndZoom(point,11);

	function theLocation(){
		var city = document.getElementById("cityName").value;
		if(city != ""){
			map.centerAndZoom(city,11);      // 用城市名设置地图中心点
		}
	}
	
	//当前定位
	var geolocation = new BMap.Geolocation();
geolocation.getCurrentPosition(function(r){
	if(this.getStatus() == BMAP_STATUS_SUCCESS){
		var mk = new BMap.Marker(r.point);
		map.addOverlay(mk);
		map.panTo(r.point);
		alert('您的位置：'+r.point.lng+','+r.point.lat);
	}
	else {
		alert('failed'+this.getStatus());
	}        
});

	
	//坐标转换完之后的回调函数
    translateCallback = function (data){
      if(data.status === 0) {
        var marker = new BMap.Marker(data.points[0]);
        map.addOverlay(marker);
        var label = new BMap.Label("转换后的百度坐标（正确）",{offset:new BMap.Size(20,-10)});
        marker.setLabel(label); //添加百度label
        map.setCenter(data.points[0]);
      }
    }

    setTimeout(function(){
        var convertor = new BMap.Convertor();
        var pointArr = [];
        pointArr.push(point);
        convertor.translate(pointArr, 1, 5, translateCallback)
    }, 1000);
</script>
