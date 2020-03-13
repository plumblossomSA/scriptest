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

$(document).ready(function() {
	userLogHistory();
})
	
	function userLogHistory() {				
				var test = [,];
				var test1 = ["2019-09-18", "2019-09-19", "2019-09-20", "2019-09-20", "2019-09-20"];
				//var test2 = [19:14:36, 09:39:19, 16:20:49, 16:39:36, 16:40:45, 10:25:29];
				var test2 = ["19:14:36", "09:39:19", "16:20:49", "16:39:36", "16:40:45", "10:25:29"];
				//var test2 = [1,2,3,4,5]
				var test=[test1,test2];

				//showGraph_01(test);
				showGraph_01();
			}


function showGraph_01(){
	
	//var test1 = ["2019-09-18", "2019-09-19", "2019-09-20", "2019-09-20", "2019-09-20"];
	//var test2 = ["19:14:36", "09:39:19", "16:20:49", "16:39:36", "16:40:45", "10:25:29"];
	
	var test1 = [{x: 1496872800000, y: 62640000, label: "17:24"},  //날짜, 시간, 라벨
		{x: 1496959200000, y: 62700000, label: "17:25"},
		{x: 1497045600000, y: 62820000, label: "17:27"}];
	
	console.log(test1);
	
	var test2 = [{x:Date.parse("2019-09-18"), y:Date.parse("19:14:36"), label:"19:14:36"},
	  	         {x:Date.parse("2019-09-19"), y:Date.parse("13:14:36"), label:"13:14:36"},
		
	];
	
	console.log(test2);
	
	
	Highcharts.chart('container', {
		title : {
			text : '계정 로그인 history',
			x : -20
		//center
		},
		subtitle : {
			text : '날짜별 로그인 history',
			x : -20
		},
		xAxis : {
			type:'datetime'
			/*
			labels: {
			    format: '{value:%Y-%m-%d}'
			}*/
		},
		yAxis : {
			type: 'datetime',
			dateTimeLabelFormats : {
				second : '%H:%M',
				minute : '%H:%M',
				hour : '%H:%M',
				day:'%H:%M',
				week:'%H:%M',
				month:'%H:%M',
				year:'%H:%M'
			}
			//max:  Date.parse('2019-09-18 00:00'),
		    //min: Date.parse('2019-09-18 00:00'),
		    //startOnTick: false,
	        //endOnTick: false,
	        /*
		    labels: {
		      format: '{value:%H:%M:%S}'
		    }*/
		    
		},
		legend : {
			layout : 'vertical',
			align : 'right',
			verticalAlign : 'middle',
			borderWidth : 0
		},
		series : [ {
			data:test2
		}]
	});
		
};
	
</script>

</html>