<%--
  Created by IntelliJ IDEA.
  User: mushr
  Date: 2018/11/11
  Time: 22:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType = "text/html;charset=UTF-8" language = "java" %>
<html>
    <body>
        <form action="6_3_confirm.jsp" method="post">                       <!--很奇怪，这里不加“method=post”就会乱码-->
            学号：<input type="text" name="Sno"><br>
            姓名：<input type="text" name="Sname"><br>
            性别：<input type="radio" value="男" name="Ssex">男
                 <input type="radio" value="女" name="Ssex">女<br>
            年龄：<input type="text" name="Sage"><br>
            班级：<input type="text" name="Clno"><br>
            <input type="submit" value="注册">
        </form>
    </body>
</html>
