
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>登录</title>
  </head>
  <body>
    <%
      if(session.getAttribute("username")==null){
    %>
    <form action="login" method="post">
        <div align="center">
            账号<input type="text" name="username"><br>
            密码<input type="password" name="password"><br>
            <input type="submit" value="登录"><br>
            还没有账号么？？？<a href="register.jsp">猛击这里注册！！！</a>
        </div>
    </form>
    <%
        }else {
            response.sendRedirect("post.jsp");
            }
    %>
  </body>
</html>
