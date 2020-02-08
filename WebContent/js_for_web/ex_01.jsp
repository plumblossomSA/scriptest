<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- 2. Script 파일위치 -->
<!-- 스크립트는 body끝 나중에 넣는것이 좋음 -->
<script type="text/javascript">
	window.onload = function() {
		var hw = document.getElementById('hw');
		//head에 스크립트가 위치하면 hw가 해석되기전에 위의 코드가 실행도어 에러가 날수있음
		//이때, window.onload를 사용해줘야함
		hw.addEventListner('click', function() {
			alert('hello world');
		})
	}
</script>
</head>
<body>
	<!-- 1. HTML에서 jAvaSCRIPT 로드하기 -->
	<!-- inline방식 -->
	<!-- <input type="button" onclick="alert('hello world')" value="Hello world"> -->


	<!-- 스크립트방식 -->
	<!-- 
<input type="button" id="hw" value="Hello World"/>
<script type="text/javascript">
var hw = document.getElementById('hw');
hw.addEventListener('click', function(){
	alert('Hello world');
})
</script>
 -->
	<!-- 외부파일로 분리 -->
	<!-- 
 <input type="button" id="hw" value="Hello World3"/>
 <script type="text/javascript" src="script.js"></script>
  -->
  
  <input type="button" id="hw" value="Hello World"/>
</body>
</html>