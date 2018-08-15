<html>
<head>
    <title>欢迎</title>
    <script>
function test() {
    var stockName = document.getElementById("stockName");
    var xhr=new XMLHttpRequest();

    xhr.onreadystatechange=function()
    {
        if (xhr.readyState==4 && xhr.status==200)
        {
            document.getElementById("myDiv").innerHTML=xhr.responseText;
        }
    }
    xhr.open("post","/test/11",true);
    xhr.send();
}
    </script>
</head>
<body>

欢迎登陆test
<br>
现在时间是
<br>
<input type="text" id="stockName">
<br>
<input type="button" id="submit" onclick="test()" value="test">

<div id="myDiv"></div>

</body>
</html>