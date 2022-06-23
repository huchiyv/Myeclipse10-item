<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>删除成功</title>
	<link rel="stylesheet"  href="css/video.css">
	<style>
       .demo1{position: fixed; top: 10px; left:0px; bottom:0px; width:100%; height: 50px;background-color: #acffcb;z-index:999;}
    </style>
  </head>
<script>

    var video= document.getElementById('v2');

    video.playbackRate = 1;

</script>
  <body>
   	<div class="demo1">
	<h1 align="center">恭喜！！！ヾ(≧▽≦*)o删除成功！ (～￣▽￣)～即将启航回港(～￣▽￣)～</h1>
	</div>

<div class="videocontainer">

    <video class="fullscreenvideo"  id="v2"  muted="" autoplay=""  loop="">

        <source src="video/deling2.mp4" type="video/mp4">

    </video>

</div>

		


    <%
    response.setHeader("refresh","4;url=show.jsp");
     %>
  </body>
</html>
