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
</body>
<script>
//중복값 제거하기 1)

/*
var names=["a","b","c","d","a"];
var uniqueNames=[];

$.each(names, function(i,el){
	if($.inArray(el, uniqueNames)== -1) uniqueNames.push(el);
})
console.log(uniqueNames);
*/


//2. 중복값제거하기 2)

/*
var names=["a","b","c","d","a","b","d"];

var uniq = names.reduce(function(a,b){
	if(a.indexOf(b)<0) a.push(b);
	return a;
},[])

console.log(uniq, names);
*/

//3. 자바스크립트 indexOf() 
//indexOf는 값을 찾고 그 결과로 숫자를 반환하는데 없는 경우 -1을 반환"-1"은 값이 없음을 의미
//찾는 값이 존재하는 경우 그 결과값을 문자열의 시작위치에해당하는 index를 반환하여 줌

/*
var names=["a","b","c","d","a"];

if(names.indexOf("a")!=-1){ 
	console.log("find");
}else{
	console.log("not found");
}
*/
const test = [
	{x: 11, y: 1},
	{x: 22, y: 1},
	{x: 22, y: 1},
	{x: 44, y: 1},
	{x: 55, y: 1},
	{x: 66, y: 1}
	]


const dataObject = [ {key: 1,  name : "aa"}, 
					 {key: 1,  name : "bb"}, 
	 				 {key: 2,  name : "cc"} 
];				  

var ret;
const tempMap = test.reduce( (ret, {x, y}) => {

if (ret[x]) { //x가 있으면
	//ret[x].push(y); //값을 뒤에 붙여라
	ret[x] = parseInt(ret[x]) + y;
} else {
	ret[x] = [y];
	
}

return ret;
}, {});


//console.log("tempMap 출력");
//console.log(tempMap);

// Object.entries() : 값이 key, value 형태로 출력됨
const resultObject = Object.entries(tempMap).reduce( (arr, [x, y]) => {
x= parseInt(x);
y= parseInt(y);
arr.push({x,y});
return arr;
}, []);


console.log("resultObject");
console.log(resultObject);
/*
console.log(resultObject[0]);
console.log(resultObject[0].x);
console.log(typeof resultObject[0].x);
console.log(parseInt(resultObject[0].x));
*/

//console.log(JSON.stringify(resultObject));

</script>
</html>