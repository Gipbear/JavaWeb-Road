<%--
  Created by IntelliJ IDEA.
  User: Grizzly
  Date: 2019/3/31
  Time: 15:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isErrorPage="true" %>
<html>
<head>
    <title>处理异常</title>
</head>
<body>
    <%--
    1.exception只能在错误页面使用，page加入一个属性isErrorPage="true"
    2.出现异常的页面指定一个梳理错误的页面，page指令中errorpage="error.jsp"--%>
    <h1 align="center">
        <%= exception.getMessage() %>
    </h1>
</body>
</html>
