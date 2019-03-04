<%--
  Created by IntelliJ IDEA.
  User: itgreen1
  Date: 2019/3/2
  Time: 12:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>增加用户信息</title>
</head>
<body>
<!-- 跳进/user的save方法中 -->
    <form action="/user/save" method="post">
        <table>
            <tr>
                <td>用户名</td>
                <td>
                    <input type="text" name="username">
                </td>
            </tr>
            <tr>
                <td>密码</td>
                <td>
                    <input type="password" name="password">
                </td>
            </tr>
            <tr>
                <td>年龄</td>
                <td>
                    <input type="text" name="age">
                </td>
            </tr>
            <tr>

                <td>
                    <input type="submit" name="提交">
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
