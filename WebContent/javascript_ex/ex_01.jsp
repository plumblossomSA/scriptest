<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
</head>
<script type="text/javascript" src="../js/greeting.js"></script>
<script type="text/javascript">

/*
//-------배열예제------------
var grades = {};
var grades = new Object();
var grades = {'a':10, 'b':20,'c':30};

for(key in grades){
	document.write("key : " + key + "   value : " + grades[key] +"</br>");
	//출력명령문
}

*/

/*
var grades={
	'list':{"a":10, "b":20,"c":30}
}
alert(grades['list']); //[object object]
//alert(grades['list']["a"]); //10출력
*/


/*
var grades={
		'list' : {"a":10, "b":20, "c":30},
		'show' : function(){
			alert("hello world");
		}
		
		//alert(grades["show"]());
		//alert(grades.show());
};

alert(grades.show());

*/

/*
var grades={
		'list' : {"a":10, "b":20, "c":30},
		'show' : function(){
			for(var name in this.list){
				console.log(this.list[name]);
			}
			console.log(this.list);
		}
};
grades.show();
*/
</script>
<body>
	<!-- 태그안의 배열 스크립트 실행예제 
<ul>
<script type="text/javascript">
var grades = {'aa':10, 'bb':20, 'cc':30};
for(var name in grades){ //key값돌려서 for문 돌리기
	document.write("<li>key : " + name + " value : " + grades[name] + "</li>");
}
</script>
</ul>
-->

<!-- 
<script type="text/javascript">
alert(welcome());
</script>
 -->
</body>
</html>