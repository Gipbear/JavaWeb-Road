<%--
  Created by IntelliJ IDEA.
  User: Grizzly
  Date: 2019/3/30
  Time: 14:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    从request作用域获得的数据：
    <%=request.getAttribute("name")%>
</body>
</html>
