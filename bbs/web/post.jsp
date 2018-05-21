<%@ page import="bbs.model.Message" %>
<%@ page import="java.util.Vector" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>发表文章</title>
</head>
<body>
    欢迎回来<%=session.getAttribute("username")%>
    <p><a href="logout.jsp">注销</a></p>
    <form action="postMessage" method="post">
        <br>标题<input type="text" name="title">
        <br>内容<textarea rows="20" cols="80" name="content"></textarea>
        <input type="submit" value="发表">
    </form>
    <%
        if(session.getAttribute("message")==null){
            session.setAttribute("message",new Vector<Message>());
        }
        Vector<Message> message =(Vector<Message>)session.getAttribute("message");
    %>
    <h1>已发表的帖子</h1>
    <%
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd  HH:mm:ss");
        for(Message m:message){
            out.println(String.format("<p>标题：<h3>%s</h3> <p>作者：%s <p>提交时间：%s <p>内容：%s",m.getTitle(),m.getAuthor(),df.format(m.getTime()),m.getContent()));
        }
    %>
</body>
</html>
