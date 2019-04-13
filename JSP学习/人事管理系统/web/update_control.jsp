<%@ page import="java.util.Map" %>
<%@ page import="com.immoc.emp.Emp" %>
<%@ page import="com.immoc.db.DBUtil" %><%--
  Created by IntelliJ IDEA.
  User: Grizzly
  Date: 2019/4/1
  Time: 16:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改信息</title>
</head>
<body>
    <%
        Map<String, Emp> map = DBUtil.map;
        Emp emp = map.get(request.getParameter("account"));
        emp.setName(request.getParameter("name"));
        emp.setEmail(request.getParameter("email"));
    %>
    <h3 align="center">修改成功</h3>
</body>
</html>
