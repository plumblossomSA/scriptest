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
//reduce : 배열을 순회하며 인덱스 데이터를 줄여가며 어떠한 기능을 수행할 수 있음

const oneTwoThree = [1, 2, 3];

var result = oneTwoThree.reduce((acc, cur, i) => {
	  console.log(acc, cur, i);
	  return acc + cur;
	}, 0);
// 0 1 0
// 1 2 1
// 3 3 2

console.log("");

const numberList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
const initValue = 0;

const totalResult = numberList.reduce((initValue, currentValue, currentIndex, array) => {
	return initValue + currentValue;
}, initValue);

console.log(totalResult);

	
</script>
</html>