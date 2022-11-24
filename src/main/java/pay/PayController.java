package pay;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cart.CartDAO;
import cart.CartVO;

@WebServlet("/pay/*")
public class PayController extends HttpServlet {
	PayDAO payDAO = new PayDAO();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doHandle(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doHandle(request, response);
	}
	
	protected void doHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nextPage="";	
		HttpSession session = request.getSession();
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String action = request.getPathInfo(); //URL 매핑 정보 가져오는 메서드
		System.out.println("요청한 매핑주소 : " + action);
		if(action.equals("/listPay.do")) {
			String id = (String)session.getAttribute("sessionID");
			String goodscode=request.getParameter("onecheck");
			System.out.println(goodscode);
			String goodscount = request.getParameter("goodscount");
			PayVO payVO = new PayVO(id, goodscode, goodscount);
			System.out.println(goodscount);
			payDAO.updateCart(payVO);
			nextPage="/pay/startpay.do";
		}else if(action.equals("/startpay.do")) {
			String id = (String)session.getAttribute("sessionID");
			String totalprice = request.getParameter("totalprice");
			PayVO payVO1 =new PayVO(id);
			payDAO.delOrder(id);
			PayVO payVO = new PayVO(id,totalprice);
			List<PayVO> payList = payDAO.listPay(payVO);
			System.out.println(payList);
	        request.setAttribute("payList", payList);
			nextPage="/mkurly/ordersheet.jsp";
		}
	     RequestDispatcher dispatcher=request.getRequestDispatcher(nextPage);
	      dispatcher.forward(request, response);
		}
	}
