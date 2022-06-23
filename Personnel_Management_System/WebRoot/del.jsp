<%@ page language="java" import="java.util.*,com.goose.*,com.goose.service.UserAction" pageEncoding="UTF-8"%>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <link rel="stylesheet"  href="css/video.css">
      <style>
       .demo1{position: fixed; top: 10px; left:0px; bottom:0px; width:100%; height: 50px;background-color: #acffcb;z-index:999;}
    </style>
  </head>
  <script>

    var video= document.getElementById('v1');

    video.playbackRate = 1;

</script>
<body>
   	<div class="demo1">
	<h1 align="center">( •̀ ω •́ )✧正在努力删除中......</h1>
	</div>

   <%
   String id=request.getParameter("id");
   Integer ID = null;
   if(id!=null){
   ID = Integer.valueOf(id);
   }
	UserAction del =new UserAction();
	del.del(ID);
   response.setHeader("refresh","3;url=delusuccess.jsp");
    %>
    
<div class="videocontainer">

    <video class="fullscreenvideo"  id="v1"  muted="" autoplay=""  loop="">

        <source src="video/del2.mp4" type="video/mp4">

    </video>

</div>
 </body>
</html>