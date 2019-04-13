<%@ page import="java.util.Map" %>
<%@ page import="com.test.classes.Notice" %>
<%@ page import="com.test.Data.Data" %><%--
  Created by IntelliJ IDEA.
  User: Grizzly
  Date: 2019/4/7
  Time: 14:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改完成</title>
</head>
<body>
    <%
        Map<String, Notice> map = Data.map1;
        Notice notice = map.get(request.getParameter("id"));
        notice.setTitle(request.getParameter("title"));
        notice.setContent(request.getParameter("content"));
    %>
    <h3 align="center">修改成功！</h3>
</body>
</html>
