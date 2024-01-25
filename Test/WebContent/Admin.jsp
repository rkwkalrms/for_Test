<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<script src="js/jquery-3.7.1.min.js"></script>
	<script>
		$(function() {
			$('.login').click(function() {
				location.href="Login.jsp";
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
		.login {
			argin: 28px 0 0 0;
		}
		table {
			 border-collapse:collapse;
			border: 1px solid black;
		}
		th, td, tr {
			border: 1px solid black;
		}
	</style>
</head>
<body>
	<div class="pageAll">
		<header>
			<h1>회원관리</h1>
			<div>
				<button class="login">로그인</button>
			</div>
		</header>
		<table>
			<tr>
				<th>ID</th>
				<th>PW</th>
				<th>Name</th>
				<th>Point</th>
				<th>수정</th>
				<th>삭제</th>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td><button>수정</button></td>
				<td><button>삭제</button></td>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td><button>수정</button></td>
				<td><button>삭제</button></td>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td><button>수정</button></td>
				<td><button>삭제</button></td>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td><button>수정</button></td>
				<td><button>삭제</button></td>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td><button>수정</button></td>
				<td><button>삭제</button></td>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td><button>수정</button></td>
				<td><button>삭제</button></td>
			</tr>
		</table>
		<div>
			<h1>스케줄러관리</h1>
			<button>스케줄러(20초마다 포인트1  증가) 실행 시작</button>
			<button>스케줄러 실행 종료</button>
		</div>
	</div>
</body>
</html>