<%@ page import="com.test.Data.Data" %>
<%@ page import="com.test.classes.Users" %>
<%@ page import="com.test.classes.Notice" %>
<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: Grizzly
  Date: 2019/4/7
  Time: 10:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage="error.jsp" %>
<html>
<head>
    <title>公告</title>
</head>
<body>
    <h3 align="center">公告列表</h3>
    <hr>
    <%
        String name = request.getParameter("name");
        String password = request.getParameter("password");
        Users user = new Users(name, password);
        Map<String, Notice> map = Data.map1;
        boolean flag = Data.checkUser(user);

        if (flag == true) {
            session.setAttribute("name", name);
    %>
    <h3 align="right">
        登录账户：
        <%= session.getAttribute("name")%>
    </h3>
            <form action="search.jsp">
                <table border="1" align="center">
                    <tr>
                        <td>
                            公告编号：
                        </td>
                        <td>
                            <input type="text" value="null" name="id">
                        </td>
                        <td>
                            <input type="submit" value="Select">
                        </td>
                    </tr>
                </table>
            </form>

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
                    for (String key: map.keySet()) {
                        Notice notice = map.get(key);
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
    <%
        } else {
        	throw new Exception("密码或者用户名不对哦~");
        }
    %>
</body>
</html>
