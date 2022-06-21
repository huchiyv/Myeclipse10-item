<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<body>

<h2>用户注册成功，单击<a href="login.jsp">此处</a>转到首页！</h2>
    <%
    out.print("等待三秒后自动跳到登录页面");
    response.setHeader("refresh", "3;url=login.jsp"); %>
</body>

