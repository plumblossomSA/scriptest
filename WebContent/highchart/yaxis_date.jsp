<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="../js/highcharts.js"></script>
<script type="text/javascript" src="../js/exporting.js"></script>
<script type="text/javascript" src="../js/grid-axis.js"></script>
<title>Insert title here</title>
</head>
<body>
<div id="container" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
</body>

<script type="text/javascript">
var data = [
	  [1496872800000, 17.24, 1.07], //날짜값(x), total(시간 y1), outoftotal(시간 y2)
	  [1496959200000, 17.25, 1.28],
	  [1497045600000, 17.27, 5.46],
	  [1497132000000, 0.00, 0.00]
	];


	function toTimestamp(timeUnformatted) {
	  debugger;
	  timeUnformatted = timeUnformatted < 10 ? ("0" + timeUnformatted) : timeUnformatted.toString();
	  var timeFormatted = Date.parse("1-1-1 " + timeUnformatted.replace(".", ":") + ":00") - Date.parse("1-1-1 00:00:00");
	  return timeFormatted;
	}

	// number with two decimal places
	function toMs(num) {
	  return 3600 * Math.floor(num) * (num % 1) * 60 * 1000;
	}

	var total = [],
	  outOfTotal = [];

	data.forEach(function(item) {
	  total.push({
	    x: item[0],
	    y: toTimestamp(item[1]), //시간
	    label: item[1].toString().replace('.', ':')});
	  outOfTotal.push({
	    x: item[0],
	    y: toTimestamp(item[2]),
	    label: item[2].toString().replace('.', ':')});
	});
	
	console.log(total);
	console.log(outOfTotal);



Highcharts.chart('container', {
	  chart: {
	    type: 'column'
	  },
	  title: {
	    text: 'Column chart with negative values'
	  },
	  xAxis: {
	    type: 'datetime'
	  },
	  yAxis: {
	    type: 'datetime',
	    dateTimeLabelFormats: { //force all formats to be hour:minute:second
	      second: '%H:%M',
	      minute: '%H:%M',
	      hour: '%H:%M',
	      day: '%H:%M',
	      week: '%H:%M',
	      month: '%H:%M',
	      year: '%H:%M'
	    }
	  },
	  tooltip: {
	    pointFormat: "<span style='color:{point.color}'>\u25CF</span> {series.name}: <b>{point.label}</b><br/>"
	  },
	  credits: {
	    enabled: false
	  },
	  series: [{
	    name: 'Total',
	    data: total
	  }, {
	    name: 'Out of total',
	    data: outOfTotal
	  }]
	});


</script>
</html>