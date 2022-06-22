<%@ page language="java" import="java.util.*,com.test.*,com.hd.*" pageEncoding="utf-8"%>
<jsp:useBean id="op" class="com.test.Demo" scope="session"></jsp:useBean>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="show.css" media="all" />

</head>
<body>
<div class="box">
<div align="center" >
    <div style="margin:1px 10px 20px 30px;width:200px; height:50px;">
        <h1 style="height: 10%">用 户 详 情</h1>
    </div>
    <!-- 展示用户信息  -->
    <div>
		<table border=1>
<tr><th>I&nbsp;D</th><th>用户名</th><th>密&nbsp;码</th><th>操&nbsp;作</th></tr>
<%
List<User> list = op.showAll();
for (int i = 0; i < list.size(); i++) {
User b = list.get(i);
%>
  <tr>
     <td style="text-align:center"><%=b.getId()%></td>
     <td style="text-align:center"><%=b.getNa()%></td>
     <td style="text-align:center"><%=b.getPw()%></td>
     <td style="text-align:center">
     &nbsp;<a href="#" onclick="window.confirm('确定删除吗？')?this.href='del.jsp?id=<%=b.getId()%>':this.href='javascript:void()';">删除用户</a>
     &nbsp;<a href="#" onclick="window.confirm('确定要更改密码吗？')?this.href='update.jsp?id=<%=b.getId()%>':this.href='javascript:void()';">更改密码</a>
     
     </td>
  </tr>
<%}%>

		</table>
		<div align="center" >
								
		<input type="button" value="退出登录" class="anniu" onclick="window.location.href='HOME.jsp'">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;点击这里<input type="button" value="重新注册" class="anniu" onclick="window.location.href='reg.jsp'"> 新用户
			
		</div>
    </div>
</div>
</div>
</body>
</html>
