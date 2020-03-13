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
<script type="text/javascript" src="../js/export-data.js"></script>
<script type="text/javascript" src="../js/accessibility.js"></script>
<title>Insert title here</title>
</head>
<body>
<div id="container">
</body>

<script>
Highcharts.chart('container', {
	
	/*
	exporting :{
		enabled:false // context button이 사라짐
	},
	*/
	
	exporting: {
  	buttons: {
    	contextButton: {
      	menuItems: ["printChart", "separator", "downloadPNG", "downloadPDF"]
      }
    }
  },
 
  
  series: [{
    data: [4, 3, 5, 6]
  }]

});
</script>
</html>