<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<script>
	//Click이라는 텍스트를 가진 button 요소를 추가하는 예제
		var jbBtn = document.createElement('button');
		var jbBtnText = document.createTextNode('Click');
		jbBtn.appendChild(jbBtnText);
		document.body.appendChild(jbBtn);
	</script>

</body>
</html>