package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDao;
import vo.MemberVo;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		MemberDao mDao = new MemberDao();
		boolean result = mDao.getMemberLogin(id,pw);
		MemberVo vo = mDao.getMemberInfo(id,pw);
		System.out.println(id + pw);
		
		request.setAttribute("vo", vo);
		request.setAttribute("result", result);
		if(result && !(id.equals("admin"))) {
			request.getRequestDispatcher("Main.jsp").forward(request, response);
		} else {
		request.getRequestDispatcher("LoginResult.jsp").forward(request, response);

		}
	}	
}
