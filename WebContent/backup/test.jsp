<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
<script>
if (head_html == "") {
	col_html += '<col style="width:10%;">';
	col_html += '<col style="width:15%;">';
	col_html += '<col style="width:15%;">';
	col_html += '<col style="width:15%;">';
	col_html += '<col style="width:15%;">';

	head_html += '<tr>';
	head_html += '<th>월</th>';
	head_html += '<th>총 로그인 수</th>';
	head_html += '<th>로그인 성공(수)</th>';
	head_html += '<th>로그인 실패(수)</th>';
	head_html += '<th>로그인 성공률(%)</th>';
	head_html += ' </tr>';
}

for (var i = 0; i < logList.length; i++) {
	var userObj = logList[i];
	var yearMonth = userObj.yearMonth; //월
	var totalLogin = userObj.totalLogin; //월별 전체 로그인 수
	var success = userObj.success; //월별 성공 수
	var failure = userObj.failure; //월별 실패 수
	var sucPercent = Math.round((success/totalLogin)*100); //월별 성공률
	
	tLogin += parseInt(totalLogin);
	tSuccess += parseInt(success);
	tFailure += parseInt(failure);
	tSpercent += sucPercent;
	cMonth += 1;


	html += '<tr>';
	html += '		<td>' + yearMonth + '</td>'; //월
	html += '		<td>' + totalLogin + '</td>'; //총 로그인 수
	html += '		<td>' + success + '</td>'; //로그인 성공
	html += '		<td>' + failure + '</td>'; //로그인 실패
	html += '		<td>' + sucPercent + '</td>'; //로그인 성공률(%)
	html += '</tr>';
}

var avgLogin = Math.round(tSpercent/cMonth); 

html += '<tr>';
html += '		<td>총 계</td>'; 
html += '		<td>' + tLogin + '</td>'; //총 로그인 수
html += '		<td>' + tSuccess + '</td>'; //로그인 성공
html += '		<td>' + tFailure + '</td>'; //로그인 실패
html += '		<td>' + avgLogin + '</td>'; //로그인 성공률(%)
html += '</tr>';


if (html == "") {
	html += '<tr><td colspan="4"><spring:message code="mainBoard.24"/><!--정보가 없습니다.--></td></tr>';
}
$("#dash_table_adminLog>colgroup").empty();
$("#dash_table_adminLog>colgroup").append(col_html);

$("#dash_table_adminLog>thead").empty();
$("#dash_table_adminLog>thead").append(head_html);

$("#dash_table_adminLog>tbody").empty();
$("#dash_table_adminLog>tbody").append(html);

</script>
</html>