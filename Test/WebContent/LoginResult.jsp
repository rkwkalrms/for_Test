<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
		boolean result = (boolean)request.getAttribute("result");

		if(result && request.getParameter("id").equals("admin")) {
			session.setAttribute("LoginId", request.getParameter("id"));
%>
			<script>
			location.href="Admin.jsp";
			</script>
<% 			
		} else if(result) { %>
<% 			session.setAttribute("LoginId", request.getParameter("id")); %>
		<script>
			location.href="Main.jsp";
		</script>
	
<% 		} else { 	%>
		<script>
			alert("아이디/비밀번호를 다시 확인하세요");
			location.href = "Login.jsp";
		</script>
<% 		}  %>