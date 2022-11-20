package marketkurly.goodsList;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import marketkurly.goods.GoodsDAO;
import marketkurly.goods.GoodsVO;
import marketkurly.member.MemberDAO;


@WebServlet("/good1/*")
public class GoodsListController extends HttpServlet {
   GoodsListDAO goodsListDAO;
   GoodsDAO goodsdao;
   MemberDAO memberDAO;
   
   @Override
   public void init() throws ServletException {
	  goodsListDAO = new GoodsListDAO();
      goodsdao= new GoodsDAO();
      memberDAO = new MemberDAO();
   }


   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      doHandle(request, response);
   }


   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      doHandle(request, response);
   }
   
   private void doHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         
        String nextPage=null;
         request.setCharacterEncoding("utf-8");
         response.setContentType("text/html;charset=utf-8");
         String action=request.getPathInfo();
         System.out.println("액션 실행중>>" + action);
         
         if(action == null || action.equals("/goodslist.do")) {
            List<GoodsListVO> glist = goodsListDAO.goodslist();
            System.out.println(glist.isEmpty());
            request.setAttribute("glist", glist);
            
            nextPage= "/kurlygoods/newproduct.jsp";
         }else if(action.equals("/goodsdetail.do")) {
        	HttpSession session = request.getSession();
        	String id = (String)session.getAttribute("sessionID");
            String goodscode=request.getParameter("goodscode");
            int result = memberDAO.findwishitem(goodscode, id);
            System.out.println(goodscode);
            List<GoodsVO> gdetail = goodsdao.goodsdetail(goodscode);
            System.out.println(gdetail.isEmpty());//리스트가  NULL인지 아닌지 확인한다.
            System.out.println(gdetail.toString());//gdetail hash 값으로 나온다. toString  문자열로 바꿔줘야지 확인 가능
            request.setAttribute("gdetail", gdetail);//리스트를 보낸다.
            request.setAttribute("wishResult", result);
            
           
            System.out.println(action +"실행중");
            
            nextPage= "/kurlygoods/productDetailPage.jsp";
         }else {
        	 nextPage= "/kurlygoods/newproduct.jsp";
         }
         
         RequestDispatcher dispatcher=request.getRequestDispatcher(nextPage);
         dispatcher.forward(request, response);
         
   }
}