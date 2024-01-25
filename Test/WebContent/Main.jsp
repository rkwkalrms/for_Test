<%@page import="vo.MemberVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	MemberVo vo = (MemberVo) request.getAttribute("vo");
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<script src="js/jquery-3.7.1.min.js"></script>
	<script>
		$(function() {
			$('.dTl').click(function() {
				location.href="https://www.koreaisacademy.com";
			});
			$('.logout').click(function() {
				location.href="LogoutServlet";
			});
			let pp = 1000;
			$('.tl1').click(function() {
				if(pp < 100000) {
					alert("포인트가 부족합니다. 광고를 클릭하세요.");
				} else if(pp <= 100000) {
					alert("컨텐츠(intro)를 구입하였습니다.");
				}
			});
			$('.tl2').click(function() {
				if(pp < 100000) {
					alert("포인트가 부족합니다. 광고를 클릭하세요.");
				} else if(pp <= 100000) {
					alert("컨텐츠(java)를 구입하였습니다.");
				}
			});
			$('.tl2').click(function() {
				if(pp < 100000) {
					alert("포인트가 부족합니다. 광고를 클릭하세요.");
				} else if(pp <= 100000) {
					alert("컨텐츠(C++)를 구입하였습니다.");
				}
			});
		});
	</script>
	<style>
		* {
		 	box-sizing: border-box;
		}
		.pageAll {
			width: 700px;
			border: 1px solid lightgrey;
			padding: 15px;
		}
		header {
			display: flex;
			justify-content: space-between;
		}
		.name {
			margin: 15px 0 0 0;
		}
		.point {
			display: block;
		}
		img {
			width: 210px; 
			height: 280px;
		}
		.images {
			display: flex;
		}
		.imgTl {
			    display: flex;
   				flex-direction: column;
   				align-items: center;
   			 	margin-bottom: 25px;
   				
		}
		.tl1 {
			    margin-right: 15px;
		}
		.tl2 {
			    margin-right: 15px;
		}
		.korea {
			width: 150px;
			height: 70px;
		}
		.dTl {
			display: flex;
			flex-direction: row-reverse;
			position: relative;
			cursor: pointer;
		}
		a {
			color: lightgrey;
			text-decoration: none;
			position: absolute;
   	 		right: 100px;
    		top: -12px;
		}
	</style>
</head>
<body>
	<div class="pageAll">
		<header>
			<h1>메인페이지</h1>
			<div class="name">
				<span><%=vo.getName() +"("+ vo.getId()+")"%>님 안녕하세요</span><button class="logout">로그아웃</button>
				<span class="point">포인트 : <%=vo.getPoint() %> 점</span>
			</div>
		</header>
		<h4>구입할 컨텐츠를 선택하세요</h4>
		<div class="images">
			<div class="imgTl tl1"><img src="images/Intro_350_408.png"><span>100,000포인트</span></div>
			<div class="imgTl tl2"><img src="images/Java_350_408.png"><span>500,000포인트</span></div>
			<div class="imgTl tl3"><img src="images/Cpp_350_408.png"><span>300,000포인트</span></div>
		</div>
		<div class="dTl">
			<a href="https://www.koreaisacademy.com">&lt;광고&gt;</a>
			<img class="korea" src="images/korea_it.png">
		</div>
	</div>
</body>
</html>