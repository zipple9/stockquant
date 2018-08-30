
<html>
<head>
    <title>index</title>
    <script src="http://lib.sinaapp.com/js/jquery/2.0.2/jquery-2.0.2.min.js">
    </script>
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

<div>
    <h3 id="test">请点击下面的按钮，通过 jQuery AJAX 改变这段文本。</h3>
    <button id="btn1" type="button">test ajax</button>
    <button id="btn2" type="button">test2 ajax</button>

    <script>
        $(document).ready(function() {
            $("#btn1").click(function () {
                $('#test').load("/main/query", function (responseTxt, statusTxt, xhr) {
                    if (statusTxt == "success")
                        alert("外部内容加载成功！");
                    if (statusTxt == "error")
                        alert("Error: " + xhr.status + ": " + xhr.statusText);
                });
            });
            $("button").click(function(){
                $.post("/test2");
            });
        });
    </script>
</div>

</body>
</html>
