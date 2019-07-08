<%--
  Created by IntelliJ IDEA.
  User: mushr
  Date: 2019/6/30
  Time: 16:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType = "text/html;charset=UTF-8" language = "java" %>
<html>
    <head>
        <title>MainPage</title>
        <link rel = "stylesheet" href = "../statics/css/bootstrap.min.css">
        <script src = "../statics/js/jquery-3.3.1.min.js"></script>
        <script src = "../statics/js/bootstrap.min.js"></script>
        <style>
            ul {
                list-style-type: none;
                //width: 100px;
                margin: 0px;
                padding: 0px;
                overflow: hidden;
                background-color: #454545;
            }

            li a:hover {
                background-color: #696969;
            }

            li a:active {
                background-color: #0c5460;
            }

            li {
                float: left;
                border-bottom: 1px solid #696969;
            }

            li:last-child {
                border-right: none;
            }

            li a {
                display: block;
                color: white;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
            }

            navbar {

            }

            a.dropdown-item {
                font-size: small;
            }

            div.dropdown-menu {
                min-width: 100%;
            }
        </style>
    </head>

    <body>

        <!-- Begin topbar -->
        <nav class = "navbar bg-dark" style = "height: 50px; border-width: medium">
            <div class = "logo" style = "height: 50px; position: absolute;">
                <a href = "MainPage.jsp"/>
                <img src = "images/logo.jpg" height = "50px">
            </div>

            <div class = "input-group" style = "width: 300px; position: absolute;left: 800px; top: 6px;">
                <input type = "text" class = "form-control" placeholder = "Search">
                <div class = "input-group-append">
                    <button class = "btn" type = "submit">
                        <img src = "icons/top_search.png" width = "20px">
                    </button>
                </div>
            </div>

            <div class = "nav-item dropdown" style = "width: 80px; position: absolute;left: 1130px ">
                <a class = "nav-link dropdown-toggle" data-toggle = "dropdown" href = "#">
                    <img src = "icons/top_msg.png" width = "20px"/>
                </a>
                <div class = "dropdown-menu">
                    <a class = "dropdown-item" href = "#">Link 1</a>
                    <a class = "dropdown-item" href = "#">Link 2</a>
                    <a class = "dropdown-item" href = "#">Link 3</a>
                </div>
            </div>

            <div class = "nav-item dropdown" style = "width: 80px ">
                <a class = "nav-link dropdown-toggle" data-toggle = "dropdown" href = "#">
                    <img src = "icons/top_user2.png" width = "20px"/>
                </a>
                <div class = "dropdown-menu">
                    <a class = "dropdown-item" href = "Login.jsp">登录</a>
                    <a class = "dropdown-item" href = "Submit.html">注册</a>
                    <a class = "dropdown-item" href = "#">注销</a>
                    <a class = "dropdown-item" href = "#">个人信息</a>
                </div>
            </div>
        </nav>
        <!-- end topbar -->

        <!-- begin sidebar -->
        <div>
            <ul class = "navbar navbar-expand-sm">
                <li class = "nav-item active">
                    <a class = "nav-link" style = "color: #e2e3e5" href = "Page0.jsp">证 券</a>
                </li>
                <li class = "nav-item">
                    <a class = "nav-link" style = "color: #e2e3e5" href = "Page1.jsp">期 货</a>
                </li>
                <li class = "nav-item">
                    <a class = "nav-link" style = "color: #e2e3e5" href = "Page2.jsp">银 行</a>
                </li>
                <li class = "nav-item">
                    <a class = "nav-link" style = "color: #e2e3e5" href = "Page3.jsp">基 金</a>
                </li>
                <li class = "nav-item">
                    <a class = "nav-link" style = "color: #e2e3e5" href = "Page4.jsp">信 托</a>
                </li>
                <li class = "nav-item">
                    <a class = "nav-link" style = "color: #e2e3e5" href = "Page5.jsp">保 险</a>
                </li>
                <li class = "nav-item">
                    <a class = "nav-link" style = "color: #e2e3e5" href = "Page6.jsp">私 募</a>
                </li>
                <li class = "nav-item">
                    <a class = "nav-link" style = "color: #e2e3e5" href = "Page7.jsp">交易所</a>
                </li>
            </ul>
        </div>
        <!-- end sidebar -->

        <!-- begin xjbsj -->
        <div class = "container" style = "margin: -300px 100px">
            输入框1 : <input type = "text" name = "input1">
            输入框2 : <input type = "text" name = "input2">
            输入框3 : <input type = "text" name = "input3"><br><br><br>
            <button name = "btn1" class = " btn btn-info">按钮1</button>
            <button name = "btn2" class = " btn btn-primary">按钮2</button>
            <button name = "btn3" class = " btn btn-danger">按钮3</button>
        </div>
        <!-- end xjbsj -->
    </body>
</html>