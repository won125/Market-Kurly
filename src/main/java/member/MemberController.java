package member;

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

import goods.GoodsDAO;
import shipping.ShippingVO;


@WebServlet("/member/*")
public class MemberController extends HttpServlet {
   MemberDAO memberDAO;
   GoodsDAO goodsDAO;

   public void init(ServletConfig config) throws ServletException {
      memberDAO = new MemberDAO();
      goodsDAO = new GoodsDAO();
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
	      if(action.equals("/index.do")) {
	    	  System.out.println(action);
	         nextPage = "/mkurly/index.jsp";
	      }else if(action.equals("/join.do")) {
	         nextPage = "/mkurly/join.jsp";
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
	         MemberVO memberVO = new MemberVO(id,pw,name,email,phone,address,detailAddress,gender,birthYear,birthMonth,birthDay);
	         ShippingVO shippingVO = new ShippingVO(id, name, phone, address, detailAddress);
	         memberDAO.addMember(memberVO);
	         memberDAO.addshipping(shippingVO);
	         request.setAttribute("msg", "addMember");
	         nextPage ="/mkurly/joinOK.jsp";
	      }else if(action.equals("/idCheck.do")) {
	         String id = request.getParameter("id");
	         boolean result = memberDAO.idCheck(id);
	         request.setAttribute("idCheck", result);
	         request.setAttribute("id", id);
	         nextPage ="/mkurly/idCheck.jsp";
	      } else if(action.equals("/login.do")) {
	         nextPage = "/mkurly/login.jsp";
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
	            nextPage = "/mkurly/loginOK.jsp";
	         } else {
	            request.setAttribute("loginResult", loginResult);
	            nextPage = "/member/login.do";
	         }
	         
	      }else if(action.equals("/logout.do")) {
	         session.removeAttribute("sessionID");
	         request.getSession().invalidate();
	         nextPage = "/member/index.do";
	      }else if(action.equals("/removeMember.do")) {
	         String id1 = (String)session.getAttribute("sessionID");
	         String id2 = request.getParameter("id");
	         if(id1.equals("admin")) {
	            int result = memberDAO.deleteMember(id2);
	            if(result == 1) {
	               request.setAttribute("result", result);
	               nextPage = "/member/managerMember.do";
	            }else {
	               request.setAttribute("result", result);
	               nextPage = "/member/managerMember.do";
	            }
	         }else {
	            int result = memberDAO.deleteMember(id2);
	            if(result == 1) {
	               request.getSession().invalidate();
	               request.setAttribute("result", result);
	               nextPage = "/member/index.do";
	            }else {
	               request.setAttribute("result", result);
	               nextPage = "/member/index.do";
	            }
	         }
	         
	      }else if(action.equals("/modMember.do")) {
	          String id = (String)session.getAttribute("sessionID");
	         System.out.println(id);
	         MemberVO memberVO;
	         memberVO = memberDAO.findMember(id);
	         request.setAttribute("memberInfo", memberVO);
	         nextPage = "/mkurly/modMemberForm.jsp";
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
	         nextPage = "/mkurly/wishList.jsp";
	      }else if(action.equals("/addwish.do")) {
	         String goodscode = request.getParameter("goodscode");
	          String id = (String)session.getAttribute("sessionID");
	         WishListVO wishListVO = goodsDAO.findgoods(id,goodscode);
	         memberDAO.addwishitem(wishListVO);
	         nextPage = "/member/wishOK.do";
	      }else if(action.equals("/wishOK.do")) {
	         String goodscode = request.getParameter("goodscode");
	         nextPage = "/good1/goodsdetail1.do?goodscode="+goodscode;
	      }else if(action.equals("/removewish.do")) {
	         String goodscode = request.getParameter("goodscode");
	          String id = (String)session.getAttribute("sessionID");
		         memberDAO.deletewishitem(goodscode, id);
		         int result = 0;
	            request.setAttribute("wishResult", result);
	         nextPage = "/good1/goodsdetail.do?goodscode="+goodscode;
	      }else if(action.equals("/delwishList.do")) {
	         String goodscode = request.getParameter("goodscode");
	          String id = (String)session.getAttribute("sessionID");
	         memberDAO.deletewishitem(goodscode, id);
	         int result = 0;
	            request.setAttribute("wishResult", result);
	         nextPage = "/mkurly/wishList.jsp";
	      }else if(action.equals("/shippingList.do")) {
	         String id = (String)session.getAttribute("sessionID");
	         List shippingList = memberDAO.shippingList(id);
	         request.setAttribute("shippingList", shippingList);
	         nextPage = "/mkurly/ShippingAddressManagerment.jsp";
	      }else if(action.equals("/addshippingForm.do")) {
	         nextPage = "/mkurly/addshipping.jsp";
	      }else if(action.equals("/addshipping.do")) {
	         String id = (String)session.getAttribute("sessionID");
	         String shippingname = request.getParameter("name");
	         String shippingphone = request.getParameter("phone");
	         String shippingaddress = request.getParameter("address");
	         String shippingdetailaddress = request.getParameter("detailaddress");
	         ShippingVO shippingVO = new ShippingVO(id, shippingname, shippingphone, shippingaddress, shippingdetailaddress);
	         memberDAO.addshipping(shippingVO);
	         nextPage = "/mkurly/addshippingOK.jsp";
	      }else if(action.equals("/updateshippingForm.do")) {
	         String idx = request.getParameter("shippingindex");
	         int shippingindex = Integer.parseInt(idx);
	         ShippingVO shippingInfo = memberDAO.findShipping(shippingindex);
	         request.setAttribute("shippingInfo", shippingInfo);
	         nextPage = "/mkurly/modshipping.jsp";
	      }else if(action.equals("/updateshipping.do")) {
	         String id = (String)session.getAttribute("sessionID");
	         String shippingname = request.getParameter("name");
	         String shippingphone = request.getParameter("phone");
	         String shippingaddress = request.getParameter("address");
	         String shippingdetailaddress = request.getParameter("detailaddress");
	         ShippingVO shippingVO = new ShippingVO(id, shippingname, shippingphone, shippingaddress, shippingdetailaddress);
	         memberDAO.updateshipping(shippingVO);
	         nextPage = "/mkurly/modshippingOK.jsp";
	      }else if(action.equals("/deleteshipping.do")) {
	         String id = (String)session.getAttribute("sessionID");
	         int idx = Integer.parseInt(request.getParameter("shippingindex"));
	         int sresult = memberDAO.deleteshipping(id,idx);
	         request.setAttribute("sresult", sresult);
	         nextPage = "/mkurly/modshippingOK.jsp";
	      }else if(action.equals("/adminpage.do")) {
	         nextPage = "/mkurly/manager.jsp";
	      }else if(action.equals("/managerMember.do")) {
	         List memberList = memberDAO.memberList();
	         request.setAttribute("memberList", memberList);
	         nextPage = "/mkurly/managerMember.jsp";
	      }else if(action.equals("/managerPost.do")) {
	         nextPage = "/mkurly/managerPost.jsp";
	      } else {
	         nextPage = "/mkurly/index.jsp";
	      }
	      RequestDispatcher dispatcher = request.getRequestDispatcher(nextPage);
	      dispatcher.forward(request, response);
	   }
}
