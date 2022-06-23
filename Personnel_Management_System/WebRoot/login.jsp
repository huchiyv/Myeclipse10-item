<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>



<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<form action="login.action" method="post">
    <div class="box">
        <h2>Login</h2>
        
        <div class="input-box">
            <label>用户名</label>
            <input type="text" name="name"/>
        </div>
        
        <div class="input-box">
            <label>密码</label>
            <input type="password" name="pwd"/>
        </div>
        
        <div class="btn-box">
            <div>
                <button>登录</button>
                <button onclick="window.location.href='reg.jsp'" type="button">注册</button>
            </div>
        </div>
        
    </div>
</form>
</body>
</html>

