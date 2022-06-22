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
  </head>
    <script>

    var video= document.getElementById('v2');

    video.playbackRate = 1;

</script>
  <body>
  	    <div class="videocontainer">

    <video class="fullscreenvideo"  id="v2"  muted="" autoplay=""  loop="">

        <source src="video/deling2.mp4" type="video/mp4">

    </video>

</div>
	    <div align="center" style="position:relative;top:500px">
  		<caption ><FONT size=6 color="white" face="MV boli">
  			恭喜！！！ヾ(≧▽≦*)o删除成功！<br>(～￣▽￣)～即将启航回港(～￣▽￣)～</FONT></caption>
</div>

    <%
    response.setHeader("refresh","3;url=show.jsp");
     %>
  </body>
</html>
