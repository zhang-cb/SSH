<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<head>
<!--引入jQuery-->
<script type="text/javascript" src="js/jquery-1.8.0.js"></script>
<script type="text/javascript">
	
	$(document).ready(function() {
	
		var flag1 = false;
		var flag2 = false;
		//为用户名输入框增加失去焦点的事件
		$("#username").blur(function() {
			var name = $("#username").val();
			if (name == "" || name == null) {
				$("#userlab").text("用户名不能为空")
			} else {
				flag1 = true;
				$("#username").text("")
			}
		});
		
		//为密码输入框增加失去焦点的事件
		$("#password").blur(function() {
			var name = $("#password").val();
			if (name == "" || name == null) {
				$("#pswlab").text("密码不能为空")
			} else {
				flag2 = true;
				$("#password").text("")
			}
		});
		//给提交按钮增加单击的事件
		$("#login").click(function() {
			if (flag1 && flag2) {
				$("#fm").submit();
			} else {
				return false;
			}
		});
	});
</script>
</head>

<body onload="">
	<form id="fm" action="servlet/LoginServlet" method="post">
		<input type="text" name="username" id="username" placeholder="用户名">
		<label id="userlab"></label><br>
		<input type="text" name="password" id="password" placeholder="密码"> 
		<label id="pswlab"></label><br> 
		<input type="submit" id="login" value="登录"><br>
	</form>
</body>
</html>
