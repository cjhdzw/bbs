package bbs.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.util.Scanner;

public class login extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setCharacterEncoding("gbk");
        PrintWriter out = resp.getWriter();
        String username = req.getParameter("username");
        String password = req.getParameter("password");

        File file = new File("C:\\Users\\cjh\\Desktop\\userlist.txt");

        Scanner cin=new Scanner(file);
        boolean flag=false;
        while(cin.hasNextLine()){
            String line=cin.nextLine();
            System.out.println(line);
            String []c=line.split("\\s+");
            if(username.equals(c[0]) && password.equals(c[1])) {
                flag=true;
                break;
            }
        }
        cin.close();
        if(flag){
            HttpSession session = req.getSession();
            session.setAttribute("username",username);
            out.print("<html>" +
                    "<body>" +
                    "<script type=\'text/javascript\' language=\'javascript\'>\n" +
                    "           alert(\'登录成功~~~~\');\n" +
                    "           window.document.location.href=\'post.jsp\';\n" +
                    "</script>" +
                    "</body>");
        }
        else {
            out.print("<html>" +
                    "<body>" +
                    "<script type=\'text/javascript\' language=\'javascript\'>\n" +
                    "           alert(\'用户名或密码错误！！！\');\n" +
                    "           window.document.location.href=\'index.jsp\';\n" +
                    "</script>" +
                    "</body>");
        }
    }
}
