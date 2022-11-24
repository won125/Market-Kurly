package cart;

import java.io.IOException;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



@WebServlet("/cart/*")
public class CartController extends HttpServlet {
	CartDAO cartDAO = new CartDAO();
	
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
		try {
		if(action == null || action.equals("/cartgo.do")) {
			nextPage="/mkurly/productDetailPage.jsp";
		}
		else if(action.equals("/addCart.do")) {
			String goodscode=request.getParameter("goodscode");
			System.out.println(goodscode);
			String id =(String)session.getAttribute("sessionID");
			System.out.println(id);
			int goodscount=Integer.parseInt(request.getParameter("goodscount"));
			System.out.println(goodscount);
			int result =cartDAO.productCheck(id, goodscode);
			System.out.println(result);
			if(result == 1) {
			CartVO cartVO = new CartVO(id, goodscode,goodscount);
			cartDAO.addCart(cartVO);
			request.setAttribute("result", result);
			}
			else if(result==0){
				request.setAttribute("result", result);
			}
			nextPage="/good1/goodsdetail.do";
		}
		else if(action.equals("/listCart.do")) {
			System.out.println("장바구니로");
			String id = (String)session.getAttribute("sessionID");
			System.out.println(id);
			CartVO cartVO = new CartVO(id);
			cartDAO.listCart(cartVO);
			List<CartVO> cartList = cartDAO.listCart(cartVO);
	        request.setAttribute("cartList", cartList);
			nextPage="/mkurly/shoppingBack.jsp";
		}
		else if (action.equals("/delCart.do")) {
			System.out.println("삭제");
			String goodscode=request.getParameter("goodscode");
			System.out.println(goodscode);
			cartDAO.delCart(goodscode);
			request.setAttribute("msg", "deleted");
			nextPage="/cart/listCart.do";
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(nextPage);
		dispatcher.forward(request, response);
		}catch (Exception e) {
			e.printStackTrace();
			System.out.println("여기에러" + e.getMessage());
			e.printStackTrace();
		}
	}

}
