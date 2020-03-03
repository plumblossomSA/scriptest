<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">

	$(document).ready(function() {
		
		$('#btn1').click(function() {
			
			//alert("A");
			$.ajax('jsondata2.jsp', {
				success : function(result) {
					$.each(result, function(key, value) {
						$('#dv_01').append(key + ':' + value + '<br>');
					});
				}
			});
		});
	});
</script>
</head>
<body>
	<button type="button" id="btn1">버튼</button>
	<div id="dv_01"></div>
</body>
</html>

