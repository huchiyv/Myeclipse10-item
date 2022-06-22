<%@ page language="java" import="java.util.*,com.test.*,com.hd.*" pageEncoding="UTF-8"%>
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
   <form name="form1" action="update.action" method="post">
   <center>
   i  d：<input type="text" name="ID" value="<%=id%>" readonly/><br><br/>
      用 户 名：<input type="text" name="name" value="<%=user.getNa()%>" readonly/><br><br/>
      密 &nbsp;&nbsp; 码：<input type="text" name="pwd" value="<%=user.getPw()%>" readonly/><br><br/>
      修改密码：<input type="password" name="pwd1" placeholder="6-12位字符，不能有空格"/><br><br/>
      确认密码：<input type="password" name="pwd2" placeholder="6-12位字符，不能有空格"/><br><br/>
      <input type="button" value="确定"  onclick="checking()">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <input type="button" value="取消" class="anniu" onclick="window.location.href='show.jsp'">
   <center>
   </form>
  </body>
