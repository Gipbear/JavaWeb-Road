<%@ page import="com.test.classes.Notice" %>
<%@ page import="com.test.Data.Data" %><%--
  Created by IntelliJ IDEA.
  User: Grizzly
  Date: 2019/4/7
  Time: 11:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>搜索</title>
</head>
<body>
    <h3 align="center">公告列表</h3>
    <h3 align="right">
        登录账户：
        <%= session.getAttribute("name")%>
    </h3>
    <hr>
    <%
        String id = request.getParameter("id");
        Notice notice = Data.checkNotice(id);

    %>
    <table border="1" align="center">
        <tr>
            <td>
                公告编号：
            </td>
            <td>
                <input type="text" value="<%=request.getParameter("id")%>">
            </td>
            <td>
                <input type="button" name="Submit" onclick="javascript:history.back(-1);" value="back">
            </td>
        </tr>
    </table>
    <br>

    <table border="1" align="center">
        <tr>
            <th>编号</th>
            <th>名称</th>
            <th>内容</th>
            <th>删除</th>
            <th>修改</th>
        </tr>
        <%
            if (notice == null) {
        %>
            <tr>
                <td colspan="5">无此公告！</td>
            </tr>
        <%
            } else {
        %>
            <tr>
                <td>
                    <%=notice.getId()%>
                </td>
                <td>
                    <%=notice.getTitle()%>
                </td>
                <td>
                    <%=notice.getContent()%>
                </td>
                <td>
                    <a href="delete.jsp?id=<%=notice.getId()%>">删除</a>
                </td>
                <td>
                    <a href="update.jsp?id=<%=notice.getId()%>&title=<%=notice.getTitle()%>&content=<%=notice.getContent()%>">修改</a>
                </td>
            </tr>
        <%
            }
        %>
    </table>
</body>
</html>
