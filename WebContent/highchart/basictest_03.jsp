<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="../js/highcharts.js"></script>
<script type="text/javascript" src="../js/exporting.js"></script>
<script type="text/javascript" src="../js/grid-axis.js"></script>
<title>하이차트 라인 기본2</title>
</head>
<body>
	<div id="container"
		style="min-width: 310px; height: 400px; margin: 0 auto"></div>
</body>
<script type="text/javascript">
//예제 데이터를 이용해서 지역별 출생월 갯수 그래프로 그려보기
	$(document).ready(function() {
		printTest();
	})

	function printTest() {

		//충북,대전,전남
		var obj = {
			list : [ {"name" : "김하늘", "birth" : "1월", "address" : "충북"}, 
				{"name" : "최형택", "birth" : "2월", "address" : "대전"}, 
				{"name" : "김대환", "birth" : "3월", "address" : "대전"}, 
				{"name" : "김명화", "birth" : "4월", "address" : "전남"}, 
				{"name" : "김민제", "birth" : "5월", "address" : "대전"}, 
				{"name" : "김종민", "birth" : "6월", "address" : "대전"}, 
				{"name" : "김평호", "birth" : "7월", "address" : "대전"}, 
				{"name" : "문준형", "birth" : "8월", "address" : "대전"}, 
				{"name" : "안우영", "birth" : "9월", "address" : "대전"}, 
				{"name" : "오유근", "birth" : "10월", "address" : "대전"}, 
				{"name" : "윤주호", "birth" : "11월", "address" : "충북"}, 
				{"name" : "이수호", "birth" : "12월", "address" : "대전"}, 
				{"name" : "이은식", "birth" : "1월", "address" : "충북"}, 
				{"name" : "임창현", "birth" : "2월", "address" : "충북"}, 
				{"name" : "황영호", "birth" : "3월", "address" : "전남"}, 
				{"name" : "강백호", "birth" : "4월", "address" : "전남"}, 
				{"name" : "김백수", "birth" : "4월", "address" : "전남"},
				{"name" : "강감수", "birth" : "4월", "address" : "전남"},
				{"name" : "강남수", "birth" : "2월", "address" : "전남"},
				{"name" : "강윤수", "birth" : "2월", "address" : "전남"},
				{"name" : "김백호", "birth" : "4월", "address" : "대전"},
				{"name" : "이백수", "birth" : "4월", "address" : "대전"},
				{"name" : "김용민", "birth" : "6월", "address" : "대전"}, 
				{"name" : "김평민", "birth" : "7월", "address" : "대전"}, 
				{"name" : "문민형", "birth" : "8월", "address" : "대전"}, 
				{"name" : "민우영", "birth" : "9월", "address" : "대전"}, 
				{"name" : "오민근", "birth" : "10월", "address" : "대전"}, 
				{"name" : "윤주민", "birth" : "11월", "address" : "충북"}, 
				{"name" : "민수호", "birth" : "12월", "address" : "대전"}, 
				{"name" : "이민식", "birth" : "1월", "address" : "충북"}, 
				{"name" : "임민현", "birth" : "2월", "address" : "충북"} ]
		};

		var list = obj.list;
		//console.log(list);
		var objlist = [];
		var list1 = [0,0,0,0,0,0,0,0,0,0,0,0];
		var list2 = [0,0,0,0,0,0,0,0,0,0,0,0];
		
		for (var i = 0; i < list.length; i++) {
			if (list[i].address == "충북") {
				if (list[i].birth == "1월") {list1[0] += 1;}
				if (list[i].birth == "2월") {list1[1] += 1;}
				if (list[i].birth == "3월") {list1[2] += 1;}
				if (list[i].birth == "4월") {list1[3] += 1;}
				if (list[i].birth == "5월") {list1[4] += 1;}
				if (list[i].birth == "6월") {list1[5] += 1;}
				if (list[i].birth == "7월") {list1[6] += 1;}
				if (list[i].birth == "8월") {list1[7] += 1;}
				if (list[i].birth == "9월") {list1[8] += 1;}
				if (list[i].birth == "10월") {list1[9] += 1;}
				if (list[i].birth == "11월") {list1[10] += 1;}
				if (list[i].birth == "12월") {list1[11] += 1;}
			}
			
			if (list[i].address == "대전") {
				if (list[i].birth == "1월") {list2[0] += 1;}
				if (list[i].birth == "2월") {list2[1] += 1;}
				if (list[i].birth == "3월") {list2[2] += 1;}
				if (list[i].birth == "4월") {list2[3] += 1;}
				if (list[i].birth == "5월") {list2[4] += 1;}
				if (list[i].birth == "6월") {list2[5] += 1;}
				if (list[i].birth == "7월") {list2[6] += 1;}
				if (list[i].birth == "8월") {list2[7] += 1;}
				if (list[i].birth == "9월") {list2[8] += 1;}
				if (list[i].birth == "10월") {list2[9] += 1;}
				if (list[i].birth == "11월") {list2[10] += 1;}
				if (list[i].birth == "12월") {list2[11] += 1;}
			}
		}
		
		objlist = [list1,list2];
		
		console.log(objlist);
		console.log(objlist[0]);
		console.log(objlist[1]);
		
		showGraph(objlist);

	}

	
	function showGraph(objlist) {
		//$(function () {
		Highcharts.chart('container', {
			title : {
				text : '지역별 생월 월 수',
				x : -20
			//center
			},
			subtitle : {
				text : '충북,대전 출신 생일 월 분석',
				x : -20
			},
			xAxis : {
				categories : [ 'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul',
						'Aug', 'Sep', 'Oct', 'Nov', 'Dec' ]
			},
			yAxis : {
				title : {
					text : '수(count)'
				},
				plotLines : [ {
					value : 0,
					width : 1,
					color : '#808080'
				} ]
			},
			tooltip : {
				valueSuffix : '수'
			},
			legend : {
				layout : 'vertical',
				align : 'right',
				verticalAlign : 'middle',
				borderWidth : 0
			},
			series : [ {
				name : '충북',
				data : objlist[0]
			},{
				name : '대전',
				data : objlist[1]
			} ]
		});
		
	};
</script>
</html>