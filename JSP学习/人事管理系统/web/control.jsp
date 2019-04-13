<%--
  Created by IntelliJ IDEA.
  User: Grizzly
  Date: 2019/3/30
  Time: 13:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage="error.jsp" %>
<%@ page import="com.immoc.emp.Emp" %>
<%@ page import="com.immoc.db.DBUtil" %>
<%@ page import="java.util.Map" %>

<html>
<head>
    <title></title>
</head>
<body>
    <%--获取账号及其密码，并且需要去调用DBUtil当中的方法来判断是否存在指定的信息
    如果正确，DBUtil方法返回值为true，显示成功页面
    如果错误，DBUtil方法返回值为false，显示错误消息
    request：获取请求信息
    getParameter(String name):可以通过一个空间的name属性来获得控件的值
    out:输出流对象
    --%>

    <h3>
        响应的字符集编码：
        <%= response.getCharacterEncoding() %>
    </h3>
    <%
        String account = request.getParameter("account");
        String password = request.getParameter("password");

        Emp emp = new Emp(account, null, password, null);
        boolean flag = DBUtil.selectEmpByAccountAndPassword(emp);
        Map<String, Emp> map = DBUtil.map;
        if (flag == true) {
        	Object o = application.getAttribute("count");
        	if (o == null){
        		application.setAttribute("count", 1);
            } else {
        		int count = Integer.parseInt(o.toString());
        		application.setAttribute("count", count+1);
            }
        	session.setAttribute("account", account);
    %>
        <h3 align="right">
            访问量：
            <%= application.getAttribute("count") %>
        </h3>
        <h3 align="right">
            登录账户：
            <%= session.getAttribute("account")%>
        </h3>
        <h3 align="center">欢迎来到人事管理系统的首页</h3>
        <hr>
        <table align="center" border="1" width="500px">
            <tr>
                <td>
                    账号
                </td>
                <td>
                    姓名
                </td>
                <td>
                    邮箱
                </td>
                <td>
                    修改
                </td>
            </tr>
        <%
            for (String key : map.keySet()) {
                Emp e = map.get(key);
        %>
                <tr>
                    <td>
                        <%= e.getAccount() %>
                    </td>
                    <td>
                        <%= e.getName() %>
                    </td>
                    <td>
                        <%= e.getEmail() %>
                    </td>
                    <td>
                        <%--
                        相邻两个JSP页面传递数据的时候，通过URL修改参数的方式传递数据
                        规则：
                        资源?参数（形如key1=value1&key2=value2）
                        --%>
                        <a href="update.jsp?account=<%=e.getAccount()%>&name=<%=e.getName()%>&email=<%=e.getEmail()%>">修改</a>
                    </td>
                </tr>
        <%
            }
        %>
        </table>
    <%
        } else {
            throw new Exception("出错啦！");
        }
    %>

</body>
</html>
























