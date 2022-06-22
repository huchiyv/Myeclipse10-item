<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta charset="UTF-8">
    <title>Login Success</title>
    <link rel="stylesheet" href="success.css"/>
    <style>
       .demo1{position: fixed; top: 10px; left:0px; bottom:0px; width:100%; height: 50px;background-color: #acffcb;z-index:999;}
    </style>
  </head>
  
  <body >
	<div class="demo1">
	<h1 align="center">恭喜你！φ(゜▽゜*)♪，登录成功即将进入......</h1>
	</div>
	
  
    <%
    //out.print("三秒后跳到主页面");
    response.setHeader("refresh", "3;url=show.jsp"); %>
  </body>
</html>
