<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	//----------------함수--------------------

	/*
	var vscope = 'global';
	function fscope(){
	    var vscope = 'local';
	    alert('함수안 '+vscope);
	}
	fscope();
	 */

	/*
	var vscope='global';
	function fscope(){
		var vscope='local';
		alert('함수안'+vscope);//local
	}
	fscope();
	alert('함수밖'+vscope);//global
	 */

	/*
	var vscope="global";
	function fscope(){
		vscope='local';
		alert("함수안"+vscope); //local
	}
	fscope();
	alert("함수밖"+vscope);//local ->fscope지역변수 선언시, var 사용하지 않았기에
						 //var를 사용하지 않는 지역변수는 전역변수가 됨
						 
	 */

	 /*
	function a() {
		i = 0;
		var i = 0;
	}

	for (var i = 0; i < 5; i++){
		a();
		document.write(i);
	}
	*/
	
	/*
	
	var MYAPP={}

		MYAPP.calculator={
				'left':null,
				'right':null
		}
		
		MYAPP.coordinator={
				'left':null,
				'right':null
		}
			
	MYAPP.calculator.left=10;
	MYAPP.calculator.right=20;
	

	
	function sum(){
		return MYAPP.calculator.left + MYAPP.calculator.right;
	}
	
	document.write(sum());
	*/
	
	/*
	function cal(func, num){
		return func(num)
	}
	
	function increase(num){
		return num+1
	}
	
	function decrease(num){
		return num-1
	}
	
	alert(cal(increase,1));
	//alert(cal(decrease,1));
	*/
	
	/*
	function cal(mode){
		var func={
				'plus':function(left,right) {return left+right},0
				'minus':function(left,right) {return left-right}
		}
		return func[mode];
	} 
	
	alert(cal('plus')(2,1));
	alert(cal('minus')(2,1));
	*/

	/*
var process=[
	function(input) {return input+10},
	function(input) {return input*input},
	function(input) {return input+12}
];
	
	var input=1;
	for(var i=0; i<process.length; i++){
		input = process[i](input);
	}
	alert(input);
	*/
	
</script>

<body>


</body>
</html>