<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'delusuccess.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet"  href="video.css">
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
