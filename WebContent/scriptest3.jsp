<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">

$(document).ready(function(){
	#("input[type=button]").click(function(){
		$.ajax({
			url:"jsondata3.jsp",
			type:"post",
			data{},
			success:function(data){
				
				var obj = JSON.parse(data);
				var memberList = obj.memberList;
				var courseName = obj.courseName;
				var memberCount = obj.memberCount;
				console.log(data);
				
				var html="";
				
				html +="<h1>과정명 : "+courseName+"</h1>";
				html +="<h2>인원 : "+memberCount+"</h2>";
				html +="<table border=1>"
				
				for(var i=0; i<memberList.length;i++{
					html +="<tr>";
					html +="<td>"+memberList[i].name +"</td>";
					html +="<td>"+memberList[i].name +"</td>";
					html +="<td>"+memberList[i].name +"</td>";
					html +="</tr>";
				}
				html += "</table>";
				$("div").append(html);
			}
				});
				
				return false;
				
			});
		});
	
</script>
</head>


<body>
<input type="button" value="확인" />
<div></div>

</body>
</html>