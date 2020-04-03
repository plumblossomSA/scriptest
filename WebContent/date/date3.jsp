<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<select id="m_state"></select>
</body>

<script>
var date = new Date();
var month = date.getMonth()+1;


var mhtml;
for(var i=1; i<13; i++){
	if(i != month){
		mhtml += '<option value="'+ i +'">' +i+ '월' +'</option>';
	}else{
		mhtml += '<option value="'+ i +'" selected>' +i+ '월' +'</option>';
	}
}

$("#m_state").empty();
$("#m_state").append(mhtml);


</script>
</html>