<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="../js/highcharts.js"></script>
<script type="text/javascript" src="../js/exporting.js"></script>
<script type="text/javascript" src="../js/grid-axis.js"></script>
<script type="text/javascript" src="../js/export-data.js"></script>
<script type="text/javascript" src="../js/accessibility.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
			
				<!-- 페이지 화면 영역 Start-->
			<div class="contents_area">
						<div id="container" class="summary_inner text-center" style="min-width: 300px; height: 300px; margin: 1em"></div>
					
				<!--// summary_dp -->
				

                    
                   
               </div>
</body>

<script type="text/javascript">
Highcharts.getJSON(
	    'https://cdn.jsdelivr.net/gh/highcharts/highcharts@v7.0.0/samples/data/usdeur.json',
	    function (data) {

	        Highcharts.chart('container', {
	            chart: {
	                zoomType: 'x'
	            },
	            title: {
	                text: 'USD to EUR exchange rate over time'
	            },
	            subtitle: {
	                text: document.ontouchstart === undefined ?
	                    'Click and drag in the plot area to zoom in' : 'Pinch the chart to zoom in'
	            },
	            xAxis: {
	                type: 'datetime'
	            },
	            yAxis: {
	                title: {
	                    text: 'Exchange rate'
	                }
	            },
	            legend: { 
	                enabled: false
	            },
	            plotOptions: {
	                area: {
	                    fillColor: {
	                        linearGradient: {
	                            x1: 0,
	                            y1: 0,
	                            x2: 0,
	                            y2: 1
	                        },
	                        stops: [ //그래프 내용
	                            [0, Highcharts.getOptions().colors[0]],
	                            [1, Highcharts.color(Highcharts.getOptions().colors[0]).setOpacity(0).get('rgba')]
	                        ]
	                    },
	                    marker: {
	                        radius: 2
	                    },
	                    lineWidth: 1,
	                    states: {
	                        hover: {
	                            lineWidth: 1
	                        }
	                    },
	                    threshold: null
	                }
	            },

	            series: [{
	                type: 'area',
	                name: 'USD to EUR',
	                data: data
	            }],
	            exporting: {
	                enabled: true
	              }
	        });
	    }
	);
</script>

</html>