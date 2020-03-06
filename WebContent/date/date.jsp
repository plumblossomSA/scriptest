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
<script type="text/javascript">

//1. new Date() : 인수를 전달하지 않으면 현재 날짜와 시간을 가지는 인스턴스를 반환
//const date = new Date(); //Fri Mar 06 2020 14:39:14 GMT+0900 (대한민국 표준시)
//console.log(date);


//2. new Date(milliseconds) 
// : 인수로 숫자 타입의 밀리초를 전달하면 1970년 1월 1일 00:00(UTC)를 기점으로 인수로 전달된
//    밀리초만큼 경과한 날짜와 시간을 가지는 인스턴스를 반환

//let date = new Date(0); //Thu Jan 01 1970 09:00:00 GMT+0900 (대한민국 표준시)
//console.log(date);

//date = new Date(86400000); //Fri Jan 02 1970 09:00:00 GMT+0900 (대한민국 표준시)
//console.log(date);

//3. new Date(dateString)
//인수로 날짜와 시간을 나타내는 문자열을 전달하면 지정된 날짜와 시간을 가지는 인스턴스를 반환
//이때 인수로 전달한 문자열은 Date.parse메소드에 의해 해석 가능한 형식이어야 함
let date = new Date('May 16, 2019 17:22:10');
console.log(date);

date = new Date('2019/05/16/17:22:00');
console.log(date);

//4. Date.parse
// : 1970년 1월 1일 00:00:00(UTC) 기점으로 인수로 전달된 지정시간(new Date(dateString)의 인수와 동일한 형식)까지 
// : 밀리초를 숫자로 반환함
let d = Date.parse('Jan 2, 1970 00:00:00 UTC');
console.log(d);

d = Date.parse('Jan 2, 1970 09:00:00');
console.log(d);

d = Date.parse('1970/01/02/09:00:00');
console.log(d);

d1 = Date.parse('2019-09-18 00:00:00'); //1568732400000
d2 = Date.parse('2019-09-19 00:00:00'); //1568818800000
d3 = Date.parse('2019-09-20 00:00:00'); //1568905200000

console.log(d1);
console.log(d2);
console.log(d3);

d4 = Date.parse('2019-09-18'); //1568764800000
d5 = Date.parse('2019-09-19'); //1568851200000
d6 = Date.parse('2019-09-20'); //1568937600000

console.log("");
console.log(d4);
console.log(d5);
console.log(d6);

d7 = Date.parse('00:00:00'); //nan 
d8 = Date.parse('24:00:00');//nan

console.log("");
console.log(d7);
console.log(d8);

d9 = Date.parse('2019-09-18 00:00:00');
d10 = Date.parse('2019-09-18 24:00:00');
console.log("");
console.log(d9);
console.log(d10);


const utcDate1 = new Date(Date.UTC(96,1,2,3,4,5));
console.log("");
console.log(Date.UTC(96,1,2,3,4,5));
console.log(utcDate1.toUTCString());

var utcDate2 = new Date(Date.UTC(2013, 1, 1, 14, 0, 0));
console.log("");
console.log(utcDate2.toUTCString());

var timestamp = 1496872800000;
var timestamp2 = 1496959200000;
var timestamp3 = 1497045600000;
var timestamp4 = 1497132000000;

var tdate = new Date(timestamp);
var tdate2 = new Date(timestamp2);
var tdate3 = new Date(timestamp3);
var tdate4 = new Date(timestamp4);

console.log("");
console.log(tdate);  //Thu Jun 08 2017 07:00:00 GMT+0900 (대한민국 표준시)
console.log(tdate2); //Thu Jun 09 2017 07:00:00 GMT+0900 (대한민국 표준시)
console.log(tdate3); //Thu Jun 10 2017 07:00:00 GMT+0900 (대한민국 표준시)
console.log(tdate4); //Thu Jun 11 2017 07:00:00 GMT+0900 (대한민국 표준시)


var timestamp5 = 62820000;
console.log("");
var tdate5 = new Date(timestamp5);
console.log(timestamp5);




</script>
</html>

