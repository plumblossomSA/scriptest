<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="../js/highcharts.js"></script>
<title>Insert title here</title>
</head>
<body>
  <div id="container" style="width: 550px; height: 400px; margin: 0 auto"></div> 
    <div id="container2" style="width: 550px; height: 400px; margin: 0 auto"></div> 
</body>

<script type="text/javascript">
$(function () { 
    var myChart = Highcharts.chart('container', {
        /* 차트종류 */
        chart: { type: 'line' },

        /* 제목 / 부제목 */
        title: { text: 'Fruit Consumption' },
        subtitle: { text: 'Fruit Consumption Decenber'}

        /* X축 / Y 축 */
        xAxis: { categories: ['Apples', 'Bananas', 'Oranges'] },
        yAxis: { title: { text: 'Fruit eaten' } },

        /* 범례 */
        legend: { layout: 'vertical', align: 'right', verticalAlign: 'middle', borderWidth:0 },

        /* 툴팁 */
        tooltip: {valueSuffix: '개'},

        /* 표 데이터 */
        series: [
            { name: 'Jane', data: [1, 0, 4] },
            { name: 'John', data: [5, 7, 3] }
        ]
    });
});

</script>
</html>