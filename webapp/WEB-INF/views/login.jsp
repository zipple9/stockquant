<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/7/30
  Time: 13:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登陆页面</title>
</head>
<body>
<br>
现在时间是<%=new java.util.Date().toString().substring(11,19) %>
<br>
<form name="loginForm" action="/login" method="post" >
    <%--<form>可以定义表单提交时HTTP请求的URL（action属性），以及HTTP请求方法（method属性）--%>
    <%--<%MVC.user us=new MVC.user%>--%>
    <table width="300" border="1" align="center">
        <tr>
            <td colspan="2">登入窗口<br><br>请输入用户名和密码进行登陆:<br>&nbsp;</td>
        </tr>
        <tr>
            <td>用户名:</td>
            <td><input type="text" name="username">
            </td>
        </tr>
        <tr>
            <td>密码:</td>
            <td><input  type="password" name="password"/>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" name="submit" value="登录"/>
            </td>


        </tr>
    </table>
</form>

</body>
</html>
