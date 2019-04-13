<%@ page import="java.util.Map" %>
<%@ page import="com.test.classes.Notice" %>
<%@ page import="com.test.Data.Data" %>
<%@ page import="java.util.Iterator" %><%--
  Created by IntelliJ IDEA.
  User: Grizzly
  Date: 2019/4/7
  Time: 13:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>删除信息</title>
</head>
<body>
    <%
        String id = request.getParameter("id");
    %>
    <h3 align="center">
        删除公告编号为:
        <%=id%>
    </h3>
    <%
        Map<String, Notice> map = Data.map1;
        Iterator<String> iter = map.keySet().iterator();
        while (iter.hasNext()) {
        	String key = iter.next();
        	if (key.equals(id)){
        		iter.remove();
            }
        }
    %>

</body>
</html>
