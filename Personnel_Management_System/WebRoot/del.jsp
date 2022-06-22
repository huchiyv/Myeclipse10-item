<%@ page language="java" import="java.util.*,com.test.*,com.hd.*" pageEncoding="UTF-8"%>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <link rel="stylesheet"  href="video.css">
  </head>
  <script>

    var video= document.getElementById('v1');

    video.playbackRate = 1;

</script>
<body>
   <%
   String id=request.getParameter("id");
	DelTest del =new DelTest();
	del.delUser(id);
	//out.println("正在删除......");
   response.setHeader("refresh","3;url=delusuccess.jsp");
   //out.println("恭喜！！！ヾ(≧▽≦*)o删除成功！");
   //out.println("(～￣▽￣)～即将启航回港(～￣▽￣)～");
    %>
    
    <div class="videocontainer">

    <video class="fullscreenvideo"  id="v1"  muted="" autoplay=""  loop="">

        <source src="video/del2.mp4" type="video/mp4">

    </video>
    <div align="center" style="position:relative;top:500px">
  		<caption ><FONT size=6 color="white" face="MV boli">
  			( •̀ ω •́ )✧正在努力删除中......</FONT></caption>
</div>

</div>
 </body>
</html>