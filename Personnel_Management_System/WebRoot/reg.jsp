<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>



<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta charset="UTF-8">
<title>学生信息注册页面</title>
<link rel="stylesheet" type="text/css" href="reg.css" media="all" />

</head>
<script type="text/javascript">
      function checking(){
      	// 2.定义正则表达式
    	var reg_password = /^\w{6,12}$/;
        var pwd = document.form1.pwd.value;
        var pwd1 = document.form1.pwd1.value;
        //alert(pwd+" "+pwd1);
         if(pwd!=pwd1){
             alert("两次密码不一致！！");
             document.form1.pwd.value="";
             document.form1.pwd1.value="";
         }else{
         // 3.判断值是否符合正则的规则
         var flag = reg_password.test(pwd);
         if(flag){
         	document.form1.submit();
         }else{
         	 alert("密码格式不符合规范");
             document.form1.pwd.value="";
             document.form1.pwd1.value="";
         }
         }
        
      }
</script>
<body>
	<center>
		<div class="back">
			<div class="a">
				<h1>登录信息注册</h1>
			</div>
			<div class="neirong">
				<div class="b">
<form name="form1" action="reg.action" method="post">
					<table border="0">

						<tr>
							<td align="left">用户名：</td>
							<td><input type="text"  name="name" class="kuang" placeholder="  请输入用户名"></td>
						</tr>
						<tr>
							<td align="left">密码：</td>
							<td><input type="password" name="pwd" class="kuang"
								placeholder="6-12位字符，不能有空格"></td>
						</tr>
						<tr>
							<td align="left">确认密码：</td>
							<td><input type="password" name="pwd1" class="kuang"
								placeholder="6-12位字符，不能有空格"></td>
						</tr>

						<tr align="center">
							<td colspan="2">
								
									<input type="button" value="确认注册" class="anniu" onclick="checking()"> 
								
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