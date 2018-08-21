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
    <input type="text" name="stockId">
    <br>
     <input type="submit" name="queryStock" value="查询股票" "/>
    <br>
</form>

<div <!-- 显示股票名称 -->>
${d1!""}
</div>
<div <!--显示股票具体行情 -->>
<#--${d2!""}-->
<#if d2??>
<table style="border:10px">
<tr style="border:1px" align="left">
    <td colspan="4">历史行情如下</td>
</tr>
<tr align="center">
    <td>日期</td>
    <td>开盘价</td>
    <td>最高价</td>
    <td>最低价</td>
    <td>收盘价</td>
    <td>交易量</td>
    <td>成交额</td>
</tr>
<#list d2 as p>
<tr align="center">
    <td>${p.date}</td>
    <td>${p.open}</td>
    <td>${p.high}</td>
    <td>${p.low}</td>
    <td>${p.close}</td>
    <td>${p.volume}</td>
    <td>${p.amount}</td>
</tr>
</#list>

</table>
</#if>
</div>
</body>

</html>
