<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>login fail</title>
    <link rel="stylesheet" href="css/fail.css"/>
    <style>
       .demo1{position: fixed; top: 10px; left:0px; bottom:0px; width:100%; height: 50px;background-color: #acffcb;z-index:999;}
    </style>
  </head>
  
  <body>
  
	<div class="demo1">
			<h1 align="center">好可惜密码不正确，回去再想想`(*>﹏<*)′</h1>
		<div align="center" style="position:relative;top:20px">
			<button class="button1" onclick="window.location.href='login.jsp'">重新输入</button><br>
			<h6>10秒后自动返回主页</h6>
		</div>
	</div>
	<%
    response.setHeader("refresh", "10;url=HOME.jsp"); 
    %>
  </body>
</html>
