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
<select onchange="categoryChange(this)">
<option>과일선택</option>
<option value="a">사과</option>
<option value="b">바나나</option>
<option value="c">포도</option>
<option value="d">배</option>
</select>

<select id="good">
<option>선호하는 과일종류</option>
</select>
</body>
<script>
function categoryChange(e){
	var good_a=["청사과","홍사과","풋사과"];
	var good_b=["노란바나나","초록바나나"];
	var good_c=["청포도","거봉","백포도"];
	var good_d=["한국배","호주배","미국배"];
	
	var target=document.getElementById("good");
	
	if(e.value == "a") var d = good_a;
	else if(e.value == "b") var d = good_b;
	else if(e.value == "c") var d = good_c;
	else if(e.value == "d") var d = good_d;
	
	target.options.length = 0;
	
	for(x in d){
		var opt = document.createElement("option");
		opt.value=d[x];
		opt.innerHTML=d[x];
		target.appendChild(opt);
	}
}
</script>

</html>