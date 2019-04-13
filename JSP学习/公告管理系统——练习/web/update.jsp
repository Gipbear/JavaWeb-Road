<%--
  Created by IntelliJ IDEA.
  User: Grizzly
  Date: 2019/4/7
  Time: 14:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改信息</title>
</head>
<body>
    <h3 align="center">修改公告信息</h3>
    <form action="update_message.jsp">
        <table border="1" align="center">
            <tr>
                <td>编号：</td>
                <td>
                    <input type="text" name="id" value="<%=request.getParameter("id")%>">
                </td>
            </tr>
            <tr>
                <td>标题：</td>
                <td>
                    <input type="text" name="title" value="<%=request.getParameter("title")%>">
                </td>
            </tr>
            <tr>
                <td>内容：</td>
                <td>
                    <input type="text" name="content" value="<%=request.getParameter("content")%>">
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="修改">
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
