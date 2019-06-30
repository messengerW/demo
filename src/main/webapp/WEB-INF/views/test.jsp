<%@ page isELIgnored="false" language = "java" contentType = "text/html; charset=UTF-8" pageEncoding = "UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>Index</title>
        <link rel = "stylesheet" type = "text/css" href = "../../statics/css/index.css">
    </head>
    <body>
        <h2>Hello World...</h2>
        <p><c:out value="${msg}" /> </p>
        <p>msg:${msg}</p>
    </body>
</html>
