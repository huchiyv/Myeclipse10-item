<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<body>

<h2>用户修改成功，单击<a href="show.jsp">此处</a>转到首页！</h2>
    <%
    out.print("等待三秒后自动跳到主页面");
    response.setHeader("refresh", "3;url=show.jsp"); %>
</body>

