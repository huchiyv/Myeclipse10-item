<%@ page language="java" import="java.util.*,com.test.*,com.hd.*" pageEncoding="UTF-8"%>
<body>
   <%
   String id=request.getParameter("id");
	DelTest del =new DelTest();
	del.delUser(id);
   out.println("删除成功,3秒钟返回");
   response.setHeader("refresh","3;url=show.jsp");
    %>
 </body>
