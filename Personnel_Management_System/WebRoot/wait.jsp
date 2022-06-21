<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%!
  int i=4;
%>
<%
i=i-1;
String un=request.getParameter("un");
out.println("恭喜你，"+un+"用户登陆成功！"+i+"秒后跳到主页面");
response.setHeader("refresh", "1");
if(i==0)
	{response.sendRedirect("show.jsp");
	 i=4;
	}
%>

