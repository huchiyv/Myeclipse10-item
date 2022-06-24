<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<script>

    var video= document.getElementById('v1');

    video.playbackRate = 1;

</script>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>
    主页
    </title>
    
 <style>
 .button1 {
 -webkit-transition-duration: 0.4s;
 transition-duration: 0.4s;
 padding: 16px 32px;
 text-align: center;
 background-color: white;
 color: black;
 border: 2px solid #4CAF50;
 border-radius:5px;
 }
 .button1:hover {
 background-color: #4CAF50;
 color: white;
 }
 </style>
	<link rel="stylesheet"  href="css/video.css">
	<!-- 
	<embed  src="video/loginbgm.mp3" loop="10" autostar="true"hidden="true"/>
	 <h1 align="center" 
		style="color:red ; font-size:50px">Hello JSP!!!</h1>
	 -->

  </head>
  
  <body>
<div align="center" style="position:relative;top:100px">
  		<caption align="center"  valign="top"><FONT size=8 color="white" face="MV boli">
  			Welcome&nbsp;P-M-System</FONT></caption>
</div>

<div class="videocontainer">

    <video class="fullscreenvideo"  id="v1"  muted="" autoplay=""  loop="">

        <source src="video/loginbg.mp4" type="video/mp4">

    </video>

</div>
	<div align="center" style="position:relative;top:500px">
	<button class="button1" onclick="window.location.href='login.jsp'">立即进入登录</button>
</div>
  </body>
</html>
