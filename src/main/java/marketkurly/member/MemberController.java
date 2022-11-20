package marketkurly.member;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import marketkurly.goodsList.GoodsListVO;


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
		HttpSession session = request.getSession();
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String action = request.getPathInfo(); //URL 매핑 정보 가져오는 메서드
		System.out.println("요청한 매핑주소 : " + action);
		if(action == null || action.equals("/index.do")) {
			nextPage = "/index.jsp";
		}else if(action.equals("/join.do")) {
			nextPage = "/kurlymember/join/join.jsp";
		}else if(action.equals("/addMember.do")) {
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
			String birth = "";
			birth = birthYear + "/" + birthMonth + "/" + birthDay;
			MemberVO memberVO = new MemberVO(id,pw,name,email,phone,address,detailAddress,gender,birth);
			memberDAO.addMember(memberVO);
			request.setAttribute("msg", "addMember");
			nextPage = "/member/index.do";
		}else if(action.equals("/idCheck.do")) {
			String id = request.getParameter("id");
			boolean result = memberDAO.idCheck(id);
			request.setAttribute("idCheck", result);
			request.setAttribute("id", id);
			nextPage ="/kurlymember/join/idCheck.jsp";
		} else if(action.equals("/login.do")) {
			nextPage = "/kurlymember/login/login.jsp";
		}else if(action.equals("/loginOK.do")) {
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			
			MemberDAO memberDAO = MemberDAO.getInstance();
			int loginResult = memberDAO.login(id, pw);
			
			
			if (loginResult == 1) {
				request.setAttribute("loginResult", loginResult);
				session.setAttribute("sessionID", id);
				if(id.equals("admin")) {
					List<MemberVO> memberList = memberDAO.memberList();
					session.setAttribute("memberList", memberList);
				}
				nextPage = "/kurlymember/login/loginOK.jsp";
			} else {
				request.setAttribute("loginResult", loginResult);
				nextPage = "/member/login.do";
			}
			
		}else if(action.equals("/logout.do")) {
			request.getSession().invalidate();
			nextPage = "/member/index.do";
		}else if(action.equals("/removeMember.do")) {
			String id = (String)session.getAttribute("sessionID");
			int result = memberDAO.deleteMember(id);
			if(result == 1) {
				request.getSession().invalidate();
				request.setAttribute("result", result);
				nextPage = "/member/index.do";
			}else {
				request.setAttribute("result", result);
				nextPage = "/member/index.do";
			}
			
		}else if(action.equals("/modMember.do")) {
	    	String id = (String)session.getAttribute("sessionID");
			System.out.println(id);
			MemberVO memberVO;
			memberVO = memberDAO.findMember(id);
			request.setAttribute("memberInfo", memberVO);
			nextPage = "/kurlymember/update/modMemberForm.jsp";
		}else if(action.equals("/updateMember.do")) {
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String phone = request.getParameter("phone");
			String gender = request.getParameter("gender");
			String birthyear = request.getParameter("birthYear");
			String birthmonth = request.getParameter("birthMonth");
			String birthday = request.getParameter("birthDay");
			MemberVO memberVO = new MemberVO(id,pw,name,email,phone,gender,birthyear,birthmonth,birthday);
			memberDAO.updateMember(memberVO);
			request.setAttribute("msg", "updateMember");
			nextPage = "/member/updateOK.do";
		}else if(action.equals("/wishList.do")) {
	    	String id = (String)session.getAttribute("sessionID");
			List<WishListVO> wlist = memberDAO.wishlist(id);
			request.setAttribute("wlist", wlist);
			nextPage = "/kurlymember/wish/wishList.jsp";
		}else if(action.equals("/addwish.do")) {
			String goodscode = request.getParameter("goodscode");
	    	String id = (String)session.getAttribute("sessionID");
			String goodsname = request.getParameter("goodsname");
			String goodsimage = request.getParameter("goodsimage");
			int goodsprice = Integer.parseInt(request.getParameter("goodsprice"));
			System.out.println(id + goodscode + goodsname + goodsimage + goodsprice);
			WishListVO wishListVO = new WishListVO(id, goodscode, goodsname, goodsimage, goodsprice);
			
			int result = memberDAO.findwishitem(goodscode, id);
			System.out.println(result);
			if(result == 0) {
				request.setAttribute("wishResult", result);
				memberDAO.addwishitem(wishListVO);
				
			}else if(result == 1) {
				request.setAttribute("wishResult", result);
				memberDAO.deletewishitem(goodscode, id);
			}
			nextPage = "/good1/goodsdetail.do";
		}else if(action.equals("/removewish.do")) {
			String goodscode = request.getParameter("goodscode");
	    	String id = (String)session.getAttribute("sessionID");
			memberDAO.deletewishitem(goodscode, id);
			nextPage = "/kurlymember/wish/wishList.jsp";
		}else if(action.equals("/shipping.do")) {

			nextPage = "/kurlymember/shipping/ShippingAddressManagerment.jsp";
		} else {
			nextPage = "/index.jsp";
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(nextPage);
		dispatcher.forward(request, response);
	}
}
