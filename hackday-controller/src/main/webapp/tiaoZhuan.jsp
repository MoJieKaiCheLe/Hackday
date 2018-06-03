<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>手风琴菜单</title>
    <script src="js/adapter.js"></script> <!--rem适配js-->
    <link rel="stylesheet" href="css/base.css"> <!--初始化文件-->
    <link rel="stylesheet" href="css/menu.css"> <!--主样式-->

</head>
<body>
<div class="middle">
<div id="menu">
    <!--显示菜单-->
    <div id="open">
        <div class="navBox">
            <ul>
                <li>
                    <h2 class="obtain">功能选择<i></i></h2>
                    <div class="secondary">
					<h3><a href='index' style="color: #ffffff">人员</a></h3>
					<h3><a href='map' style="color: #ffffff">地图</a></h3>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</div>
</div>

<script src="js/menu.js"></script> <!--控制js-->
</body>
</html>