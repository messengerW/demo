<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.PreparedStatement" %>
<%@ page import = "java.sql.SQLException" %><%--
  Created by IntelliJ IDEA.
  User: mushr
  Date: 2018/11/11
  Time: 18:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType = "text/html;charset=UTF-8" language = "java" %>
<html>
    <head>
        <meta http-equiv="refresh" content="3;url=6_1_list1.jsp">
    </head>
    <body>
        <%
            String driver = "com.mysql.jdbc.Driver";
            String url = "jdbc:mysql://localhost:3306/test?useUnicode=true&characterEncoding=UTF-8";
            String username = "root";
            String password = "232624";
            Connection conn = null;

            //  连接数据库
            try {
                Class.forName(driver).newInstance();        //加载JDBC驱动
                conn = DriverManager.getConnection(url, username, password);        //连接MySQL
            } catch (ClassNotFoundException e) {
                out.println("找不到驱动类");
            } catch (SQLException e) {
                out.println("连接MySQL失败");
            }

            request.setCharacterEncoding("UTF-8");
            String Sno = request.getParameter("Sno");
            String Sname = request.getParameter("Sname");
            String Ssex = request.getParameter("Ssex");
            String Sage = request.getParameter("Sage");
            String Clno = request.getParameter("Clno");


            String sql = "INSERT INTO student (Sno, Sname, Ssex, Sage, Clno) VALUES (?,?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, Sno);
            ps.setString(2, Sname);
            ps.setString(3, Ssex);
            ps.setString(4, Sage);
            ps.setString(5, Clno);
            int i = ps.executeUpdate();
            out.println("成功插入" + i + "条记录");
            ps.close();
            conn.close();

        %>
    </body>
</html>
