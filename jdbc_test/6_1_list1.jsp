<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Statement" %>
<%@ page import = "java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: mushr
  Date: 2018/11/10
  Time: 22:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType = "text/html;charset=UTF-8" language = "java" %>
<html>
    <head>
        <title>Student</title>
        <link rel = "stylesheet" href = "bootstrap/bootstrap.min.css">
        <script src = "bootstrap/jquery-3.3.1.min.js"></script>
        <script src = "bootstrap/bootstrap.min.js"></script>
    </head>

    <body>
        <%
            String driver = "com.mysql.jdbc.Driver";
            String url = "jdbc:mysql://localhost:3306/test?useUnicode=true&characterEncoding=utf-8";
            String username = "root";
            String password = "232624";
            Class.forName(driver).newInstance();
            Connection conn = DriverManager.getConnection(url, username, password);
            Statement stat = conn.createStatement();
            String sql = "SELECT Sno,Sname,Ssex,Sage,Clno FROM student";
            ResultSet rs = stat.executeQuery(sql);
        %>

        <table class = "table table-striped">
            <thead>
            <tr>
                <th>学号</th>
                <th>姓名</th>
                <th>性别</th>
                <th>年龄</th>
                <th>班级号</th>
            </tr>
            </thead>

            <%while (rs.next()) {%>

            <tr>
                <td><%=rs.getString(1)%></td>
                <td><%=rs.getString(2)%></td>
                <td><%=rs.getString(3)%></td>
                <td><%=rs.getString(4)%></td>
                <td><%=rs.getString(5)%></td>
            </tr>
            <%}%>
        </table>
        <%
            stat.close();
            conn.close();
        %>
        <div class="row">
            <div class="col-md-4 offset-md-5"><a href = "6_2_new1.jsp">增加学生信息</a></div>
        </div>
    </body>
</html>
