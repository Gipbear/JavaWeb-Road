<%--
  Created by IntelliJ IDEA.
  User: Grizzly
  Date: 2019/3/31
  Time: 14:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>员工更新页面</title>
</head>
<body>
    <h3>员工更新页面</h3>
    <h3 align="right">
        登录账户：
        <%= session.getAttribute("account") %>
    </h3>
    <hr>
    <form action="update_control.jsp">
        <table align="center" border="1" width="210px">
            <tr>
                <td>
                    账号
                </td>
                <td>
                    <input type="text" name="account" value="<%=request.getParameter("account")%>">
                </td>
            </tr>
            <tr>
                <td>
                    名字
                </td>
                <td>
                    <input type="text" name="name" value="<%=request.getParameter("name")%>">
                </td>
            </tr>
            <tr>
                <td>
                    邮箱
                </td>
                <td>
                    <input type="text" name="email" value="<%=request.getParameter("email")%>">
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="提交" >
                </td>
            </tr>

        </table>
    </form>
</body>
</html>
