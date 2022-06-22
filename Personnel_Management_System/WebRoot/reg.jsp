<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>



<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>学生信息注册页面</title>
<link rel="stylesheet" type="text/css" href="reg.css" media="all" />
<script type="text/javascript">
      function check(){
        var pwd = document.form1.pwd.value;
        var pwd1 = document.form1.pwd1.value;
        //alert(pwd+" "+pwd1);
         if(pwd!=pwd1){
             alert("两次密码不一致！！");
             document.form1.pwd.value="";
             document.form1.pwd1.value="";
         }
         else
              document.form1.submit();
      }
</script>
</head>
<body>
	<center>
		<div class="back">
			<div class="a">
				<h1>登录信息注册</h1>
			</div>
			<div class="neirong">
				<div class="b">
<form action="reg.action" method="post">
					<table border="0">

						<tr>
							<td align="left">用户名：</td>
							<td><input type="text"  name="name" class="kuang" placeholder="  请输入用户名"></td>
						</tr>
						<tr>
							<td align="left">密码：</td>
							<td><input type="password" name="pwd" class="kuang"
								placeholder="  请输入六位密码"></td>
						</tr>
						<tr>
							<td align="left">确认密码：</td>
							<td><input type="password" name="pwd1" class="kuang"
								placeholder="  请输入六位密码"></td>
						</tr>

						<tr align="center">
							<td colspan="2">
								
									<input type="submit" value="确认注册" class="anniu" onclick="check()"> 
								
								<input type="button" value="返回主页" class="anniu" onclick="window.location.href='HOME.jsp'">
							
							</td>
						</tr>

					</table>
					</form>
				</div>
			</div>

		</div>
	</center>
</body>
</html>