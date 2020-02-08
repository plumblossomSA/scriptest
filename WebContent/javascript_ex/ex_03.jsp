<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<script type="text/javascript">

//---------------클로저-----------------

/*
function outter(){
	function inner(){
		var title="coding everybody1";
		alert(title);
	}
	inner();
}
outter();

*/

/*
function outter(){
	var title = "coding everybody2";
	function inner(){
		alert(title);
	}
	inner();
}
outter();

*/

/*
function outter(){
	var title ="coding everyone3";
	return function(){
		alert(title);
	}
}
inner = outter();
inner(); //내부함수에서 이미 사라진 외부함수의 지역변수에 접근하고 있음

*/

/*
function factory_movie(title){
	return{
		get_title:function(){
			return title;
		},
		set_title:function(_title){
			title=_title;
		}
	}
}

ghost = factory_movie('Ghost in the shell');
matrix = factory_movie('Matrix');

alert(ghost.get_title());
alert(matrix.get_title());

ghost.set_title('공각기동대');
alert(ghost.get_title());
alert(matrix.get_title());
*/

var arr=[]
for(var i=0; i<5; i++){
	//0-4까지 출력됨
	arr[i] = function(id){
		return function(){
			return id;
		}
	}(i); 
	/*
	//5만 다섯번 출력됨
	arr[i] = function(){
		return i;
	}*/
}

for(var index in arr){
	console.log(arr[index]());
}
</script>
<body>

</body>
</html>