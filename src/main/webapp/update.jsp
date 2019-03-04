<%--
  Created by IntelliJ IDEA.
  User: itgreen1
  Date: 2019/3/2
  Time: 13:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>修改信息页面</title>
</head>
<body>
    <form action="/user/update" method="post">
        <table>
            <tr>
                <td>用户编号</td>
                <td>
                    <input type="text" name="id" value="${user.id}" readonly>
                </td>
            </tr>
            <tr>
                <td>用户名</td>
                <td>
                    <input type="text" name="username" value="${user.username}">
                </td>
            </tr>
            <tr>
                <td>密码</td>
                <td>
                    <input type="password" name="password" value="${user.password}">
                </td>
            </tr>
            <tr>
                <td>年龄</td>
                <td>
                    <input type="text" name="age" value="${user.age}">
                </td>
            </tr>
            <tr>
                <td>
                    <input type="submit"value="提交">
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
