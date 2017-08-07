<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
  </head>
  
  <body>
   <%
   	//得到session保存的数据
   	String name=(String)session.getAttribute("username");
    %>
    <!-- 用jsp表达式显示用户名 -->
    <%=name %>,欢迎你登录！
    EL表达式显示已保存在session中的数据<br>
    
    ${username} ,欢迎你登录！
    main page. <br>
  </body>
</html>
