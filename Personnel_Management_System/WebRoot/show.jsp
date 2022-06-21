<%@ page language="java" import="java.util.*,com.test.*,com.hd.*" pageEncoding="utf-8"%>
<jsp:useBean id="op" class="com.test.Demo" scope="session"></jsp:useBean>

<table border=1>
<tr><th>ID</th><th>用户名</th><th>密码</th><th>操作</th></tr>
<%
List<User> list = op.showAll();
for (int i = 0; i < list.size(); i++) {
User b = list.get(i);
%>
  <tr>
     <td><%=b.getId()%></td>
     <td><%=b.getNa()%></td>
     <td><%=b.getPw()%></td>
     <td><a href="del.jsp?id=<%=b.getId()%>">删除</a> <a href="update.jsp?id=<%=b.getId()%>">修改</a></td>
  </tr>
<%}%>

</table>
</body>
