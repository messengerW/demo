<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Statement" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.SQLException" %>
<%--
  Created by IntelliJ IDEA.
  User: mushr
  Date: 2018/11/8
  Time: 17:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType = "text/html;charset=UTF-8" language = "java" %>
<html>
    <body>

        <%
            String driver = "com.mysql.jdbc.Driver";
            String url = "jdbc:mysql://localhost:3306/tourism?useUnicode=true&characterEncoding=utf-8";
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

            //  执行具体操作
            try {
                Statement stat = conn.createStatement();        //创建sql语句对象
                String sql = "INSERT INTO city (cid, cname) VALUES ('6','成都')";
                int i = stat.executeUpdate(sql);
                out.println("成功插入" + i + "行");
                stat.close();
                conn.close();
            } catch (SQLException e) {
                out.println("插入失败");
            }

        %>
    </body>
</html>
