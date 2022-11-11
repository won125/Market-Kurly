package marketkurly.member;

import java.io.IOException;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/member/*")
public class MemberController extends HttpServlet {
	MemberDAO memberDAO;

	public void init(ServletConfig config) throws ServletException {
		memberDAO = new MemberDAO();
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}
	
	private void doHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String nextPage="";
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String action = request.getPathInfo(); //URL 매핑 정보 가져오는 메서드
		System.out.println("요청한 매핑주소 : " + action);
		if(action == null || action.equals("/index.do")) {
			nextPage = "/index.jsp";
		}else if(action.equals("/join.do")) {
			nextPage = "/kurlymember/join.jsp";
		}else if(action.equals("/idCheck.do")) {
			String id = request.getParameter("id");
			int result = memberDAO.idCheck(id);
			String msg = "";
			if(result == 1) {
				msg = "사용가능한 아이디입니다";
			}else if(result == 0) {
				msg = "중복된 아이디입니다";
			}else {
				msg = "에러 발생!!!(-1)";
			}
			request.setAttribute("msg", msg);
			nextPage = "/kurlymember/idCheck.jsp";
		} else if(action.equals("/addMember.do")) {
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String phone = request.getParameter("phone");
			String address = request.getParameter("address");
			String detailAddress = request.getParameter("detailAddress");
			String gender = request.getParameter("gender");
			String birthYear = request.getParameter("birthYear");
			String birthMonth = request.getParameter("birthMonth");
			String birthDay = request.getParameter("birthDay");
			String birth = birthYear + "/" + birthMonth + "/" + birthDay;
			MemberVO memberVO = new MemberVO(id,pw,name,email,phone,address,detailAddress,gender,birth);
			memberDAO.addMember(memberVO);
			request.setAttribute("msg", "addMember");
			nextPage = "/member/index.do";
		}else if(action.equals("/login.do")) {
			nextPage = "/kurlymember/login.jsp";
		}else if(action.equals("/loginOK.do")) {
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			
			MemberDAO memberDAO = MemberDAO.getInstance();
			int loginResult = memberDAO.login(id, pw);
			
			if (loginResult == 1) {
				request.setAttribute("loginResult", loginResult);
				HttpSession session = request.getSession();
				session.setAttribute("sessionID", id);
				nextPage = "/kurlymember/loginOK.jsp";
			} else {
				request.setAttribute("loginResult", loginResult);
				nextPage = "/member/login.do";
			}
			
		}else if(action.equals("/logout.do")) {
			request.getSession().invalidate();
			nextPage = "/member/index.do";
		}else {
			nextPage = "/index.jsp";
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(nextPage);
		dispatcher.forward(request, response);
	}
}
