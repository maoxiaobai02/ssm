<%--
  Created by IntelliJ IDEA.
  User: itgreen1
  Date: 2019/3/2
  Time: 12:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- 打开EL表达式 -->
<%@page isELIgnored="false"%>
<!-- jslt标签库 -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>信息显示页面</title>
</head>
<body>
    <table>
        <tr>
            <th>用户编号</th>
            <th>用户名</th>
            <th>密码</th>
            <th>年龄</th>
            <th>操作</th>
        </tr>
        <!-- 遍历User -->
        <!-- list对应后端逻辑代码返回的List集合，user对应的后面遍历的对象 -->
        <c:forEach items="${requestScope.list}" var="user">
            <tr>
                <td>${user.id}</td>
                <td>${user.username}</td>
                <td>${user.password}</td>
                <td>${user.age}</td>
                <td>
<!-- 跳进/user（handler中进行标注）中的findById方法，传参user.id -->
                    <a href="/user/findById/${user.id}">修改</a>
                    <a href="/user/deleteById/${user.id}">删除</a>
                </td>
            </tr>
        </c:forEach>
    </table>
    <!-- 用重定向方法进行跳转到添加页面 -->
    <a href="/save.jsp">增加用户</a>
</body>
</html>
