<%@ page contentType="text/html; charset=UTF-8" %>
<jsp:useBean id="student" class="msw.bean.Student" scope="session">
</jsp:useBean>
<html>
    <head>
        <title>Spring MVC表单处理</title>
    </head>
    <body>

        <h2>Result</h2>
        <jsp:getProperty name="student" property="age"/>
        <table>
            <tr>
                <td>名称：</td>
                <td>${name}</td>
            </tr>
            <tr>
                <td>年龄：</td>
                <td>${age}</td>
            </tr>
            <tr>
                <td>编号：</td>
                <td>${id}</td>
            </tr>
        </table>
    </body>
</html>