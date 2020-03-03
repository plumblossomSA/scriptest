<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
<script>
$(document).ready(function() {
	//$("input[type=button]").click(function() {
	  $("#btn1").click(function(){
		$.ajax({
			url : "./jsondata3.jsp",
			type : "post", //get post둘중하나
			data : {},
			success : function(data) {
				var obj = JSON.parse(data);
				var memberList = obj.memberList;
				var courseName = obj.courseName;
				var memberCount = obj.memberCount;

// 				console.log(data);

				var html = "";
				html += "<h4>과정명 : "+ courseName +"</h4>";
				html += "<h5>인원 : "+ memberCount +"</h5>";
				html += "<table border=1>"
				for(var i = 0; i < memberList.length; i ++) {
					html += "<tr>";
					html += "<td>" + memberList[i].name + "</td>";
					html += "<td>" + memberList[i].birth + "</td>";
					html += "<td>" + memberList[i].address + "</td>";
					html += "</tr>";
				}
				html += "</table>";
				$("#dv_01").append(html);
			}
		});
		return false; //자기자신이 submit이나 뭔가 실행하는기능이 있다면 그것을 막고 위에 내용만 실행
	});
});
</script>
</head>


<body>
<!-- <input type="button" value="확인" /> -->
<button type="button" id="btn1">확인</button>
<div id="dv_01"></div>
</body>
</html>
