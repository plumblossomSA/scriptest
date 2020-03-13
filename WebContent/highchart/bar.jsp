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
<div id="graph_02" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
</body>

<script type="text/javascript">
console.log(Highcharts.version);
var login_yn = [50,50];
console.log(login_yn);

	Highcharts.chart('graph_02', {
	    chart: {
	        type: 'column'
	    },
	    title: {
	        text: 'Weekly Average Chart'
	    },
	    subtitle: {
	        text: 'highchart sample subtitle'
	    },
	    xAxis: {
	        categories: [
	            '성공여부'
	         
	        ],
	        crosshair: true
	    },
	    yAxis: {
	        min: 0,
	        title: {
	            text: 'avarage'
	        }
	    },
	    tooltip: {
	        headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
	        pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
	            '<td style="padding:0"><b>{point.y:.1f} mm</b></td></tr>',
	        footerFormat: '</table>',
	        shared: true,
	        useHTML: true
	    },
	    series: [{
	        name: '성공',
	        data: [login_yn[0]]

	    }, {
	        name: '실패',
	        data: [login_yn[1]]

	    }]
	});
		

</script>
</html>