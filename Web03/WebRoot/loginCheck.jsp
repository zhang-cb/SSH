<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  </head>
  
  <body>
   <%
   	//要得到客户端请求发过来的数据就要使用内置对象request的getParameter方法
   	//getParmeter方法的参数对应表单的input标签的name属性值,name="xxx"
   	String name = request.getParameter("username");
   	String psw = request.getParameter("password");
   	if(name.equals("admin")&&psw.equals("123")){
   		//符合要求的用户名，先保存到session内置对象，可以让其他页面共享数据
   		session.setAttribute("username",name);
   		//挑战到main.jsp页面，使用内置对象response的sendRedirect方法
   		response.sendRedirect("main.jsp");
   	}else{
   		//输出错误信息，输出时是哟内置对象out
   		out.write("<script>alert('用户名或者密码错误')</script>");
   	}
   	
   	
    %>
  </body>
</html>
