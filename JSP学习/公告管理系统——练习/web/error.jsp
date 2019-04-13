<%--
  Created by IntelliJ IDEA.
  User: Grizzly
  Date: 2019/4/7
  Time: 12:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isErrorPage="true" %>
<html>
<head>
    <title>出错啦！</title>
</head>
<body>
    <h2 align="center">
        <%= exception.getMessage() %>
    </h2>
</body>
</html>
