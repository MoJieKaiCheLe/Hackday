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
</head>
<body>

    <div id="r-result">
		城市名: <input id="cityName" type="text" style="width:100px; margin-right:10px;" />
		<input type="button" value="查询" onclick="theLocation()" />
	</div>
	<div id="r-result">
		经&nbsp;&nbsp;&nbsp;度: <input id="longitude" type="text" style="width:100px; margin-right:10px;" />
		纬&nbsp;&nbsp;&nbsp;度: <input id="latitude" type="text" style="width:100px; margin-right:10px;" />
		<input type="button" value="查询" onclick="theLocation()" />
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
