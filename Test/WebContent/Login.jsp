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
			$('#ca').click(function() {
				location.href="CreateAccountV2.jsp";
			});
		});
	</script>
	<style>
		.outTl {
			
			width: 300px;
			height: 300px;
			display: flex;
			flex-direction: column;
			border: 1px solid lightgrey;
		}
		.mTl {
			
		}
	</style>
</head>
<body>
	<div class="outTl">
		<h1>로그인</h1>
		<form action="LoginServlet" method="post">
			<div class="tl">
				ID: <input type="text" name="id" required maxlength="20">
			</div>
			<div class="tl">
				PW: <input type="password" name="pw" required maxlength="20">
			</div>
			<button>로그인</button>
		</form>
		<button id="ca">회원가입</button>
	</div>
</body>
</html>