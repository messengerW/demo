<%@ page contentType="text/html; charset=UTF-8" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<jsp:useBean id="student" class="msw.bean.Student" scope="session" ></jsp:useBean>
<jsp:setProperty name="student" property="name" value="王子鑫"></jsp:setProperty>
<jsp:setProperty name="student" property="age" value="15"></jsp:setProperty>

<html>
    <head>
        <title>Spring MVC Form Handling</title>
    </head>
    <body>
        <%=student.getAge()%>
        <%=student.getName()%>
        <h2>Student Information</h2>
        <form action="/home/result" method="get">
            Name:<input name="name" type="text"><br>
            Age:<input name="age" type="text"><br>
            ID:<input name="id" type="text"><br>
            <input type="submit" value="submit">
        </form>
        <%--<form:form method="POST" action="result.jsp">--%>
            <%--<table>--%>
                <%--<tr>--%>
                    <%--<td><form:label path="name">Name</form:label></td>--%>
                    <%--<td><form:input path="name" /></td>--%>
                <%--</tr>--%>
                <%--<tr>--%>
                    <%--<td><form:label path="age">Age</form:label></td>--%>
                    <%--<td><form:input path="age" /></td>--%>
                <%--</tr>--%>
                <%--<tr>--%>
                    <%--<td><form:label path="id">id</form:label></td>--%>
                    <%--<td><form:input path="id" /></td>--%>
                <%--</tr>--%>
                <%--<tr>--%>
                    <%--<td colspan="2">--%>
                        <%--<input type="submit" value="Submit"/>--%>
                    <%--</td>--%>
                <%--</tr>--%>
            <%--</table>--%>
        <%--</form:form>--%>
    </body>
</html>