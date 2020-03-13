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
<ul id="myTask">
<li>Coding</li>
<li>Answering</li>
<li>Getting Paid</li>
</ul>
</body>

<script type="text/javascript">
//on("click")과 click()의 차이점은 동적으로 이벤트를 바인딩할 수 있는지의 차이
//on("click")은 동적으로 가능하고, click()은 최초에 선언된 element에만 동작

//1. click() 이벤트
/*
$('#myTask').children().click(function(){
	$(this).remove();
})

//동적으로 새로운 li태그를 추가한 뒤
$('#myTask').append('<li>New Li Tag</li>'); 
*/

//새로 추가된 <li>New Li Tag</li> 를 클릭하면 click()메소드 동작하지 않음
//click()이벤트는 최초에 페이지를 로딩할 때 선언되어 있던, element에 이벤트를 바인딩하고 더이상 동적으로 바인딩하지 않기 때문

//2. on("click") 이벤트 : 동적으로 이벤트 바인딩 가능

$('#myTask').on('click','li',function(event){ 
	$(event.target).remove()
});

$('#myTask').append('<li> new li tag</li>'); //remove가능


</script>
</html>