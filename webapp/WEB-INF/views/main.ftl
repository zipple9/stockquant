<#--Created by IntelliJ IDEA.-->
<#--User: Administrator-->
<#--Date: 2018/8/2-->
<#--Time: 14:48-->
<#--To change this template use File | Settings | File Templates.-->
<html>
<head>
    <title>欢迎</title>
</head>
<body>

<h1>欢迎登陆 ${u1}</h1>
<br>
现在时间是 ${.now}
<form name="queryStock"  action="/main/query" method="post">
    股票代码
    <input type="text" name="stockName">
    <br>
     <input type="submit" name="queryStock" value="查询股票" "/>
    <br>
</form>

<div>

</div>
</body>

</html>
