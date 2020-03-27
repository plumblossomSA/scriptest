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

$(document).ready(function() {
	loopDateFromToday(2018, 3, 1, function(dt) { console.log(dt); })
});


if (Date.prototype.yyyymmdd === undefined) {
	Date.prototype.yyyymmdd = function() {
	  var mm = this.getMonth() + 1; // getMonth() is zero-based
	  var dd = this.getDate();

	  return [this.getFullYear(),
	          (mm>9 ? '' : '0') + mm,
	          (dd>9 ? '' : '0') + dd
	         ].join('');
	};
}


function loopDateFromToday(yyyy, mm, dd, callback) {

	var curr = new Date();
	var end = new Date(yyyy, mm-1, dd);
	var betweenDay = (curr.getTime() - end.getTime()) / 1000 / 60 / 60 / 24;

	while (betweenDay > 0) {

		betweenDay--;
		callback(curr.yyyymmdd());
		curr.setDate(curr.getDate() - 1);

	}	

}


</script>
</html>