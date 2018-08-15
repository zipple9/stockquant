
<html>
<head>
    <title>index</title>
</head>
<body>
<br>
现在时间是${.now}
<br>
<form name="loginForm" action="/login" method="post" >
    <#--<form>可以定义表单提交时HTTP请求的URL（action属性），以及HTTP请求方法（method属性）-->
    <table width="300" border="1" align="center">
        <tr>
            <td colspan="2">登入窗口<br><br>${tips!"ooo"}<br>&nbsp;</td>
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
        <tr>

        </tr>
    </table>
</form>

</body>
</html>
