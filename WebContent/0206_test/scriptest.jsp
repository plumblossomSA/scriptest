<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(
			function() {

				$("#btn1").click(function() {
					$.ajax('jsondata.jsp', {
						success : function(result) {
						$.each(result,function(key, value) {
							
						/*  $('#dv_01').append(value.name + ' : '
							+ value.gender
							+ ' : '
							+ value.email
							+ '<br>');*/
							
							 var str = '<tr><td>' + value.name + '</td>';
							 str += '<td>' + value.gender + '</td>';
							 str += '<td>' + value.email + '</td></tr>';
							 $('#tb1').append(str);
				});
			}
		});
	});
});

	/*
	 function proc(result) {
	 //alert("A");
	 $.each(result, function(index, item) {
	 //index-maptest.jsp에 선언된 배열 전달, item-객체의 키값을 말함.
	 //$('#d_01').append(item.name + ' : ' + item.gender + ' : ' + item.email + '<br>');

	 var str = '<tr><td>' + item.name + '</td>';
	 str += '<td>' + item.gender + '</td>';
	 str += '<td>' + item.email + '</td></tr>';
	 $('#tb1').append(str);
	 });
	 }

	 $(document).ready(function() {
	 //버튼이 클릭되면 ajax 호출 
	 $('#btn').click(function() {
	 $ajax({
	 url : "jsondata.jsp",
	 dataType : "json",
	 success : function(result) {
	 proc(result);
	 }
	 });
	 });
	 });
	
	 */

	//요소 출력하기
	/*
	$(document).ready(function(){
	$('#btn').click(function(){
		var result = document.getElementById('ajaxValue');
		
		$.ajax({
			url:"maptest.jsp",
			dataType:"json",
			success:function(data){
				console.log(result.innerHTML = data.study.ajax);
			},
			error : function(e){
				console.log(e.responseText);
			}
		});
	});
	});
	 */
</script>
</head>
<body>
	<button type="button" id="btn1">버튼</button>
	<div id="dv_01"></div>
	<table id='tb1' border="1">
	
		<tr>
			<th>이름</th>
			<th>성별</th>
			<th>이메일</th>
		</tr>
	</table>

</body>
</html>

