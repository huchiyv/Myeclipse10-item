<%@ page language="java" import="java.util.*,com.test.*,com.hd.*" pageEncoding="UTF-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta charset="UTF-8">
    <title>更改密码</title>
	<link rel="stylesheet" type="text/css" href="update.css" media="all" />
  </head>
<script type="text/javascript">
      function checking(){
      	// 2.定义正则表达式
    	var reg_password = /^\w{6,12}$/;
        var pwd1 = document.form1.pwd1.value;
        var pwd2 = document.form1.pwd2.value;
        //alert(pwd+" "+pwd1);
         if(pwd1!=pwd2){
             alert("两次密码不一致！！");
             document.form1.pwd1.value="";
             document.form1.pwd2.value="";
         }else{
         // 3.判断值是否符合正则的规则
         var flag = reg_password.test(pwd1);
         if(flag){
         	document.form1.submit();
         }else{
         	 alert("密码格式不符合规范");
             document.form1.pwd2.value="";
             document.form1.pwd1.value="";
         }
         }
        
      }
</script>
<body>
	<%
	String id=request.getParameter("id");
	UserAction link = new UserAction();
	User user = link.findAUser(id);
	 %>
	<center>
		<div class="back">
			<div class="a">
				<h1>更改密码</h1>
			</div>
			<div class="neirong">
				<div class="b">
<form name="form1" action="update.action" method="post">
					<table border="0">

						<tr>
							<td align="left">i  d：</td>
							<td><input type="text"  name="ID" value="<%=id %>" class="kuang" readonly></td>
						</tr>

						<tr>
							<td align="left">用户名：</td>
							<td><input type="text"  name="name"  value="<%=user.getNa() %>" class="kuang" readonly></td>
						</tr>
						<tr>
							<td align="left">密码：</td>
							<td><input type="text" name="pwd"  value="<%=user.getPw() %>" class="kuang" readonly></td>
						</tr>
						<tr>
							<td align="left">修改密码：</td>
							<td><input type="password" name="pwd1" class="kuang"
								placeholder="6-12位字符，不能有空格"></td>
						</tr>
						
						<tr>
							<td align="left">确认密码：</td>
							<td><input type="password" name="pwd2" class="kuang"
								placeholder="6-12位字符，不能有空格"></td>
						</tr>

						<tr align="center">
							<td colspan="2">
								
								<input type="button" value="确定" class="anniu" onclick="checking()"> 
								
								<input type="button" value="取消" class="anniu" onclick="window.location.href='show.jsp'">
							
							</td>
						</tr>

					</table>
					</form>
				</div>
			</div>

		</div>
	</center>
</body>
