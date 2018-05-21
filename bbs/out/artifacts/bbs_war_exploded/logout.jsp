<%--
  Created by IntelliJ IDEA.
  User: cjh
  Date: 2018/5/16
  Time: 下午 7:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
      <%
      session.invalidate();
      response.sendRedirect("index.jsp");
      %>
</body>
</html>
