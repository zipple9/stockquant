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



<#if d2??>
<#--<div id="chart" height="500" width="1200" style="margin:30px;"></div>-->
<#--<script type="text/javascript">-->
    <#--function goChart(cBox, dataArr){-->
        <#--// 声明所需变量-->
        <#--var canvas,ctx;-->
        <#--// 图表属性-->
        <#--var cWidth, cHeight, cMargin, cSpace;-->
        <#--var originX, originY;-->
        <#--// 图属性-->
        <#--var bMargin, tobalBars, bWidth, maxValue, minValue;-->
        <#--var totalYNomber;-->
        <#--var gradient;-->
        <#--var showArr;-->

        <#--//范围选择属性-->
        <#--var dragBarX,dragBarWidth;-->

        <#--// 运动相关变量-->
        <#--var ctr, numctr, speed;-->
        <#--//鼠标移动-->
        <#--var mousePosition = {};-->

        <#--// 创建canvas并获得canvas上下文-->
        <#--canvas = document.createElement("canvas");-->
        <#--if(canvas && canvas.getContext){-->
            <#--ctx = canvas.getContext("2d");-->
        <#--}-->

        <#--canvas.innerHTML = "你的浏览器不支持HTML5 canvas";-->
        <#--cBox.appendChild(canvas);-->

        <#--initChart(); // 图表初始化-->

        <#--drawLineLabelMarkers(); // 绘制图表轴、标签和标记-->
        <#--drawBarAnimate(); // 绘制柱状图的动画-->
        <#--//检测鼠标移动-->
        <#--var mouseTimer = null;-->
        <#--addMouseMove();-->
        <#--function addMouseMove(){-->
            <#--canvas.addEventListener("mousemove",function(e){-->
                <#--e = e || window.event;-->
                <#--if( e.offsetX || e.offsetX==0 ){-->
                    <#--mousePosition.x = e.offsetX;-->
                    <#--mousePosition.y = e.offsetY;-->
                <#--}else if( e.layerX || e.layerX==0 ){-->
                    <#--mousePosition.x = e.layerX;-->
                    <#--mousePosition.y = e.layerY;-->
                <#--}-->

                <#--clearTimeout(mouseTimer);-->
                <#--mouseTimer = setTimeout(function(){-->
                    <#--ctx.clearRect(0,0,canvas.width, canvas.height);-->
                    <#--drawLineLabelMarkers();-->
                    <#--drawBarAnimate(true);-->
                    <#--drawDragBar();-->
                <#--},10);-->
            <#--});-->
        <#--}-->


        <#--// 图表初始化-->
        <#--function initChart(){-->
            <#--// 图表信息-->
            <#--cMargin = 60;-->
            <#--cSpace = 80;-->
            <#--//将canvas扩大2倍，然后缩小，以适应高清屏幕-->
            <#--canvas.width = cBox.getAttribute("width")* 2 ;-->
            <#--canvas.height = cBox.getAttribute("height")* 2;-->
            <#--canvas.style.height = canvas.height/2 + "px";-->
            <#--canvas.style.width = canvas.width/2 + "px";-->
            <#--cHeight = canvas.height - cMargin*2-cSpace*2;-->
            <#--cWidth = canvas.width - cMargin*2-cSpace*2;-->
            <#--originX = cMargin + cSpace;-->
            <#--originY = cMargin + cHeight;-->


            <#--showArr = dataArr.slice( 0,parseInt(dataArr.length/2) );-->

            <#--// 柱状图信息-->
            <#--tobalBars = showArr.length;-->
            <#--bWidth = parseInt( cWidth/tobalBars/3);-->
            <#--bMargin = parseInt( (cWidth-bWidth*tobalBars)/(tobalBars+1) );-->
            <#--maxValue = 0;-->
            <#--minValue = 9999999;-->
            <#--for(var i=0; i<dataArr.length; i++){-->
                <#--var barVal =  dataArr[i][1][3] ;-->
                <#--if( barVal > maxValue ){-->
                    <#--maxValue = barVal;-->
                <#--}-->
                <#--var barVal2 =  dataArr[i][1][2] ;-->
                <#--if( barVal2 < minValue ){-->
                    <#--minValue = barVal2;-->
                <#--}-->

            <#--}-->
            <#--maxValue *= 1.05;-->
            <#--minValue *= 0.95;-->
            <#--totalYNomber = 10;     //一共有几档纵坐标-->
            <#--// 运动相关-->
            <#--ctr = 1;-->
            <#--numctr = 50;-->
            <#--speed = 2;-->

            <#--dragBarWidth = 30;-->
            <#--dragBarX = cWidth/2+cSpace+cMargin-dragBarWidth/2;-->

        <#--}-->

        <#--// 绘制图表轴、标签和标记-->
        <#--function drawLineLabelMarkers(){-->
            <#--ctx.font = "24px Arial";-->
            <#--ctx.lineWidth = 2;-->
            <#--ctx.fillStyle = "#000";-->
            <#--ctx.strokeStyle = "#000";-->
            <#--// y轴-->
            <#--drawLine(originX, originY, originX, cMargin);-->
            <#--// x轴-->
            <#--drawLine(originX, originY, originX+cWidth, originY);-->

            <#--// 绘制标记-->
            <#--drawMarkers();-->
        <#--}-->

        <#--// 画线的方法-->
        <#--function drawLine(x, y, X, Y){-->
            <#--ctx.beginPath();-->
            <#--ctx.moveTo(x, y);-->
            <#--ctx.lineTo(X, Y);-->
            <#--ctx.stroke();-->
            <#--ctx.closePath();-->
        <#--}-->

        <#--// 绘制标记-->
        <#--function drawMarkers(){-->
            <#--ctx.strokeStyle = "#E0E0E0";-->
            <#--// 绘制 y-->
            <#--var oneVal = (maxValue-minValue)/totalYNomber;-->
            <#--ctx.textAlign = "right";-->
            <#--for(var i=0; i<=totalYNomber; i++){-->
                <#--var markerVal =  parseInt(i*oneVal+minValue);;-->
                <#--var xMarker = originX-10;-->
                <#--var yMarker = parseInt( originY-cHeight*(markerVal-minValue)/(maxValue-minValue) );-->

                <#--ctx.fillText(markerVal, xMarker, yMarker+3, cSpace); // 文字-->
                <#--if(i>0){-->
                    <#--drawLine(originX+2, yMarker, originX+cWidth, yMarker);-->
                <#--}-->
            <#--}-->

            <#--// 绘制 x-->
            <#--var textNb = 6;-->
            <#--ctx.textAlign = "center";-->
            <#--for(var i=0; i<tobalBars; i++){-->
                <#--if(tobalBars>textNb &&  i%parseInt(tobalBars/6) != 0 ){-->
                    <#--continue;-->
                <#--}-->
                <#--var markerVal = dataArr[i][0];-->
                <#--var xMarker = parseInt( originX+cWidth*(i/tobalBars)+bMargin+bWidth/2 );-->
                <#--var yMarker = originY+30;-->
                <#--ctx.fillText(markerVal, xMarker, yMarker, cSpace); // 文字-->
            <#--}-->
            <#--// 绘制标题 y-->
            <#--ctx.save();-->
            <#--ctx.rotate(-Math.PI/2);-->
            <#--ctx.fillText("价 格", -canvas.height/2, cSpace-20);-->
            <#--ctx.restore();-->
            <#--// 绘制标题 x-->
            <#--ctx.fillText("日 期", originX+cWidth/2, originY+cSpace-20);-->
        <#--};-->

        <#--//绘制柱形图-->
        <#--function drawBarAnimate(mouseMove){-->
            <#--var parsent = ctr/numctr;-->
            <#--for(var i=0; i<tobalBars; i++){-->
                <#--var oneVal = parseInt(maxValue/totalYNomber);-->
                <#--var data = dataArr[i][1];-->
                <#--var color = "#30C7C9";-->
                <#--var barVal = data[0];-->
                <#--var disY = 0;-->
                <#--//开盘0 收盘1 最低2 最高3   跌30C7C9  涨D7797F-->
                <#--if(data[1]>data[0]){ //涨-->
                    <#--color = "#D7797F";-->
                    <#--barVal = data[1];-->
                    <#--disY = data[1]-data[0];-->
                <#--}else{-->
                    <#--disY = data[0]-data[1];-->
                <#--}-->
                <#--var showH = disY/(maxValue-minValue)*cHeight*parsent;-->
                <#--showH = showH>2 ? showH : 2 ;-->

                <#--var barH = parseInt( cHeight*(barVal-minValue)/(maxValue-minValue));-->
                <#--var y = originY - barH;-->
                <#--var x = originX + ((bWidth+bMargin)*i + bMargin)*parsent;-->

                <#--drawRect( x, y, bWidth, showH, mouseMove, color,true);  //开盘收盘  高度减一避免盖住x轴-->

                <#--//最高最低的线-->
                <#--showH = (data[3]-data[2])/(maxValue-minValue)*cHeight*parsent;-->
                <#--showH = showH>2 ? showH : 2 ;-->

                <#--y = originY - parseInt( cHeight*(data[3]-minValue)/(maxValue-minValue));-->
                <#--drawRect( parseInt(x+bWidth/2-1), y, 2, showH, mouseMove, color);  //最高最低  高度减一避免盖住x轴-->
            <#--}-->
            <#--if(ctr<numctr){-->
                <#--ctr++;-->
                <#--setTimeout(function(){-->
                    <#--ctx.clearRect(0,0,canvas.width, canvas.height);-->
                    <#--drawLineLabelMarkers();-->
                    <#--drawBarAnimate();-->
                    <#--drawDragBar();-->
                <#--}, speed*=0.03);-->
            <#--}-->
        <#--}-->

        <#--//绘制方块-->
        <#--function drawRect( x, y, X, Y, mouseMove , color, ifBigBar,ifDrag){-->

            <#--ctx.beginPath();-->

            <#--if( parseInt(x)%2 !== 0){-->
                <#--x += 1;-->
            <#--}-->
            <#--if( parseInt(y)%2 !== 0){-->
                <#--y += 1;-->
            <#--}if( parseInt(X)%2 !== 0){-->
                <#--X += 1;-->
            <#--}-->
            <#--if( parseInt(Y)%2 !== 0){-->
                <#--Y += 1;-->
            <#--}-->
            <#--ctx.rect( parseInt(x), parseInt(y), parseInt(X), parseInt(Y) );-->

            <#--if(ifBigBar && mouseMove && ctx.isPointInPath(mousePosition.x*2, mousePosition.y*2)){ //如果是鼠标移动的到柱状图上，重新绘制图表-->
                <#--ctx.strokeStyle = color;-->
                <#--ctx.strokeWidth = 20;-->
                <#--ctx.stroke();-->
            <#--}-->
            <#--//如果移动到拖动选择范围按钮-->
            <#--canvas.style.cursor = "default";-->
            <#--if(ifDrag && ctx.isPointInPath(mousePosition.x*2, mousePosition.y*2)){ //如果是鼠标移动的到柱状图上，重新绘制图表-->
                <#--//console.log(123);-->
                <#--canvas.style.cursor = "all-scroll";-->
            <#--}-->
            <#--ctx.fillStyle = color;-->
            <#--ctx.fill();-->
            <#--ctx.closePath();-->

        <#--}-->


        <#--//绘制拖动轴-->
        <#--drawDragBar();-->
        <#--function drawDragBar(){-->
            <#--drawRect( originX, originY+cSpace, cWidth, cMargin, false, "#E8E4F0");-->
            <#--drawRect( originX, originY+cSpace, dragBarX-originX, cMargin, false, "#BCCEF5");-->
            <#--drawRect( dragBarX, originY+cSpace, dragBarWidth, cMargin, false, "#078ACB",false,true);-->
        <#--}-->

        <#--//监听拖拽-->
        <#--canvas.onmousedown = function(e){-->

            <#--if(canvas.style.cursor != "all-scroll"){-->
                <#--return false;-->
            <#--}-->

            <#--document.onmousemove = function(e){-->
                <#--e = e || window.event;-->
                <#--if( e.offsetX || e.offsetX==0 ){-->
                    <#--dragBarX = e.offsetX*2-dragBarWidth/2;-->
                <#--}else if( e.layerX || e.layerX==0 ){-->
                    <#--dragBarX = e.layerX*2-dragBarWidth/2;-->
                <#--}-->

                <#--if(dragBarX<=originX){-->
                    <#--dragBarX=originX-->
                <#--}-->
                <#--if(dragBarX>originX+cWidth-dragBarWidth){-->
                    <#--dragBarX=originX+cWidth-dragBarWidth-->
                <#--}-->

                <#--var nb = Math.ceil( dataArr.length*( (dragBarX-cMargin-cSpace)/cWidth ) );-->
                <#--showArr = dataArr.slice( 0, nb || 1 );-->

                <#--// 柱状图信息-->
                <#--tobalBars = showArr.length;-->
                <#--bWidth = parseInt( cWidth/tobalBars/3);-->
                <#--bMargin = parseInt( (cWidth-bWidth*tobalBars)/(tobalBars+1) );-->


            <#--}-->

            <#--document.onmouseup = function(){-->
                <#--document.onmousemove = null;-->
                <#--document.onmouseup = null;-->
            <#--}-->
        <#--}-->


    <#--}-->

    <#--// 时间  开盘 收盘 最低 最高-->
    <#--var dataArr =new Array();-->
    <#--<#list d2 as data>-->
        <#--dataArr.push([${data.date},[${data.open},${data.close},${data.low},${data.high}]]);-->
    <#--</#list>-->
    <#--goChart(document.getElementById("chart"),dataArr);-->
<#--</script>-->
</#if>

<#if d3??>
<div id="chart" height="500" width="1200" style="margin:30px;"></div>
<script type="text/javascript">
    function goChart(cBox, dataArr){
        // 声明所需变量
        var canvas,ctx;
        // 图表属性
        var cWidth, cHeight, cMargin, cSpace;
        var originX, originY;
        // 图属性
        var bMargin, tobalBars, bWidth, maxValue, minValue;
        var totalYNomber;
        var gradient;
        var showArr;

        //范围选择属性
        var dragBarX,dragBarWidth;

        // 运动相关变量
        var ctr, numctr, speed;
        //鼠标移动
        var mousePosition = {};

        // 创建canvas并获得canvas上下文
        canvas = document.createElement("canvas");
        if(canvas && canvas.getContext){
            ctx = canvas.getContext("2d");
        }

        canvas.innerHTML = "你的浏览器不支持HTML5 canvas";
        cBox.appendChild(canvas);

        initChart(); // 图表初始化

        drawLineLabelMarkers(); // 绘制图表轴、标签和标记
        drawBarAnimate(); // 绘制柱状图的动画
        //检测鼠标移动
        var mouseTimer = null;
        addMouseMove();
        function addMouseMove(){
            canvas.addEventListener("mousemove",function(e){
                e = e || window.event;
                if( e.offsetX || e.offsetX==0 ){
                    mousePosition.x = e.offsetX;
                    mousePosition.y = e.offsetY;
                }else if( e.layerX || e.layerX==0 ){
                    mousePosition.x = e.layerX;
                    mousePosition.y = e.layerY;
                }

                clearTimeout(mouseTimer);
                mouseTimer = setTimeout(function(){
                    ctx.clearRect(0,0,canvas.width, canvas.height);
                    drawLineLabelMarkers();
                    drawBarAnimate(true);
                    drawDragBar();
                },10);
            });
        }


        // 图表初始化
        function initChart(){
            // 图表信息
            cMargin = 60;
            cSpace = 80;
            //将canvas扩大2倍，然后缩小，以适应高清屏幕
            canvas.width = cBox.getAttribute("width")* 2 ;
            canvas.height = cBox.getAttribute("height")* 2;
            canvas.style.height = canvas.height/2 + "px";
            canvas.style.width = canvas.width/2 + "px";
            cHeight = canvas.height - cMargin*2-cSpace*2;
            cWidth = canvas.width - cMargin*2-cSpace*2;
            originX = cMargin + cSpace;
            originY = cMargin + cHeight;


            showArr = dataArr.slice( 0,parseInt(dataArr.length/2) );

            // 柱状图信息
            tobalBars = showArr.length;
            bWidth = parseInt( cWidth/tobalBars/3);
            bMargin = parseInt( (cWidth-bWidth*tobalBars)/(tobalBars+1) );
            maxValue = 0;
            minValue = 9999999;
            for(var i=0; i<dataArr.length; i++){
                var barVal =  dataArr[i][1][3] ;
                if( barVal > maxValue ){
                    maxValue = barVal;
                }
                var barVal2 =  dataArr[i][1][2] ;
                if( barVal2 < minValue ){
                    minValue = barVal2;
                }

            }
            maxValue *= 1.05;
            minValue *= 0.95;
            totalYNomber = 10;     //一共有几档纵坐标
            // 运动相关
            ctr = 1;
            numctr = 50;
            speed = 2;

            dragBarWidth = 30;
            dragBarX = cWidth/2+cSpace+cMargin-dragBarWidth/2;

        }

        // 绘制图表轴、标签和标记
        function drawLineLabelMarkers(){
            ctx.font = "24px Arial";
            ctx.lineWidth = 2;
            ctx.fillStyle = "#000";
            ctx.strokeStyle = "#000";
            // y轴
            drawLine(originX, originY, originX, cMargin);
            // x轴
            drawLine(originX, originY, originX+cWidth, originY);

            // 绘制标记
            drawMarkers();
        }

        // 画线的方法
        function drawLine(x, y, X, Y){
            ctx.beginPath();
            ctx.moveTo(x, y);
            ctx.lineTo(X, Y);
            ctx.stroke();
            ctx.closePath();
        }

        // 绘制标记
        function drawMarkers(){
            ctx.strokeStyle = "#E0E0E0";
            // 绘制 y
            var oneVal = (maxValue-minValue)/totalYNomber;
            ctx.textAlign = "right";
            for(var i=0; i<=totalYNomber; i++){
                var markerVal =  parseInt(i*oneVal+minValue);;
                var xMarker = originX-10;
                var yMarker = parseInt( originY-cHeight*(markerVal-minValue)/(maxValue-minValue) );

                ctx.fillText(markerVal, xMarker, yMarker+3, cSpace); // 文字
                if(i>0){
                    drawLine(originX+2, yMarker, originX+cWidth, yMarker);
                }
            }

            // 绘制 x
            var textNb = 6;
            ctx.textAlign = "center";
            for(var i=0; i<tobalBars; i++){
                if(tobalBars>textNb &&  i%parseInt(tobalBars/6) != 0 ){
                    continue;
                }
                var markerVal = dataArr[i][0];
                var xMarker = parseInt( originX+cWidth*(i/tobalBars)+bMargin+bWidth/2 );
                var yMarker = originY+30;
                ctx.fillText(markerVal, xMarker, yMarker, cSpace); // 文字
            }
            // 绘制标题 y
            ctx.save();
            ctx.rotate(-Math.PI/2);
            ctx.fillText("价 格", -canvas.height/2, cSpace-20);
            ctx.restore();
            // 绘制标题 x
            ctx.fillText("日 期", originX+cWidth/2, originY+cSpace-20);
        };

        //绘制柱形图
        function drawBarAnimate(mouseMove){
            var parsent = ctr/numctr;
            for(var i=0; i<tobalBars; i++){
                var oneVal = parseInt(maxValue/totalYNomber);
                var data = dataArr[i][1];
                var color = "#30C7C9";
                var barVal = data[0];
                var disY = 0;
                //开盘0 收盘1 最低2 最高3   跌30C7C9  涨D7797F
                if(data[1]>data[0]){ //涨
                    color = "#D7797F";
                    barVal = data[1];
                    disY = data[1]-data[0];
                }else{
                    disY = data[0]-data[1];
                }
                var showH = disY/(maxValue-minValue)*cHeight*parsent;
                showH = showH>2 ? showH : 2 ;

                var barH = parseInt( cHeight*(barVal-minValue)/(maxValue-minValue));
                var y = originY - barH;
                var x = originX + ((bWidth+bMargin)*i + bMargin)*parsent;

                drawRect( x, y, bWidth, showH, mouseMove, color,true);  //开盘收盘  高度减一避免盖住x轴

                //最高最低的线
                showH = (data[3]-data[2])/(maxValue-minValue)*cHeight*parsent;
                showH = showH>2 ? showH : 2 ;

                y = originY - parseInt( cHeight*(data[3]-minValue)/(maxValue-minValue));
                drawRect( parseInt(x+bWidth/2-1), y, 2, showH, mouseMove, color);  //最高最低  高度减一避免盖住x轴
            }
            if(ctr<numctr){
                ctr++;
                setTimeout(function(){
                    ctx.clearRect(0,0,canvas.width, canvas.height);
                    drawLineLabelMarkers();
                    drawBarAnimate();
                    drawDragBar();
                }, speed*=0.03);
            }
        }

        //绘制方块
        function drawRect( x, y, X, Y, mouseMove , color, ifBigBar,ifDrag){

            ctx.beginPath();

            if( parseInt(x)%2 !== 0){
                x += 1;
            }
            if( parseInt(y)%2 !== 0){
                y += 1;
            }if( parseInt(X)%2 !== 0){
                X += 1;
            }
            if( parseInt(Y)%2 !== 0){
                Y += 1;
            }
            ctx.rect( parseInt(x), parseInt(y), parseInt(X), parseInt(Y) );

            if(ifBigBar && mouseMove && ctx.isPointInPath(mousePosition.x*2, mousePosition.y*2)){ //如果是鼠标移动的到柱状图上，重新绘制图表
                ctx.strokeStyle = color;
                ctx.strokeWidth = 20;
                ctx.stroke();
            }
            //如果移动到拖动选择范围按钮
            canvas.style.cursor = "default";
            if(ifDrag && ctx.isPointInPath(mousePosition.x*2, mousePosition.y*2)){ //如果是鼠标移动的到柱状图上，重新绘制图表
                //console.log(123);
                canvas.style.cursor = "all-scroll";
            }
            ctx.fillStyle = color;
            ctx.fill();
            ctx.closePath();

        }


        //绘制拖动轴
        drawDragBar();
        function drawDragBar(){
            drawRect( originX, originY+cSpace, cWidth, cMargin, false, "#E8E4F0");
            drawRect( originX, originY+cSpace, dragBarX-originX, cMargin, false, "#BCCEF5");
            drawRect( dragBarX, originY+cSpace, dragBarWidth, cMargin, false, "#078ACB",false,true);
        }

        //监听拖拽
        canvas.onmousedown = function(e){

            if(canvas.style.cursor != "all-scroll"){
                return false;
            }

            document.onmousemove = function(e){
                e = e || window.event;
                if( e.offsetX || e.offsetX==0 ){
                    dragBarX = e.offsetX*2-dragBarWidth/2;
                }else if( e.layerX || e.layerX==0 ){
                    dragBarX = e.layerX*2-dragBarWidth/2;
                }

                if(dragBarX<=originX){
                    dragBarX=originX
                }
                if(dragBarX>originX+cWidth-dragBarWidth){
                    dragBarX=originX+cWidth-dragBarWidth
                }

                var nb = Math.ceil( dataArr.length*( (dragBarX-cMargin-cSpace)/cWidth ) );
                showArr = dataArr.slice( 0, nb || 1 );

                // 柱状图信息
                tobalBars = showArr.length;
                bWidth = parseInt( cWidth/tobalBars/3);
                bMargin = parseInt( (cWidth-bWidth*tobalBars)/(tobalBars+1) );


            }

            document.onmouseup = function(){
                document.onmousemove = null;
                document.onmouseup = null;
            }
        }


    }

    // 时间  开盘 收盘 最低 最高
    var dataArr =${d3};
    goChart(document.getElementById("chart"),dataArr);
</script>
</#if>

</body>

</html>
