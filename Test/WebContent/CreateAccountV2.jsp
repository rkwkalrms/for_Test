<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
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
	<form action="CreateAccountServlet" method="post">
		<div class="outTl">
			<h1>회원가입</h1>
			<div class="tl">
				ID: <input type="text" name="id" >
			</div>
			<div class="tl">
				PW: <input type="password" name="pw">
			</div>
			<div class="tl">
				Name: <input type="text" name="name">
			</div>
			<button>작성완료</button>
		</div>
	</form>
</body>
</html>