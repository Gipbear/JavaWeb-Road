<%--
  Created by IntelliJ IDEA.
  User: Grizzly
  Date: 2019/3/30
  Time: 12:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<html>
<head>
    <title>人事管理系统</title>
</head>
<body>

<h3 align="center">人事管理系统登陆界面</h3>
<hr>
<%--action代表了服务器端的处理程序--%>
<form action="control.jsp">
    <table align="center">
        <tr>
            <td>账号：</td>
            <td>
                <input type="text" name="account">
            </td>
        </tr>
        <tr>
            <td>密码：</td>
            <td>
                <input type="password" name = "password">
            </td>
        </tr>
        <tr>
            <td>
                <input type="submit" value="登录">
            </td>
        </tr>
    </table>
</form>

</body>
</html>























