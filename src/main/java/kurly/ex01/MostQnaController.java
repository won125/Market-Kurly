package kurly.ex01;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/mostqna/*")
public class MostQnaController extends HttpServlet {
   MostQnaDAO mostQnaDAO;

   @Override
   public void init() throws ServletException {
      mostQnaDAO=new MostQnaDAO();
   }

   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      doHandle(request, response);
   }

   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      doHandle(request, response);
   }

   protected void doHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	  String nextPage=null;
	  request.setCharacterEncoding("utf-8");
	  response.setContentType("text/html;charset=utf-8");
	  String action=request.getPathInfo();
	  System.out.println("요청 이름"+action);//요청명을 가져옴.
	  if(action == null || action.equals("/listMostQna.do")) {
		  String _section =request.getParameter("section"); 
			 String _pageNum=request.getParameter("pageNum"); 
			 int section = Integer.parseInt((_section ==null)? "1" : _section); 
			 int pageNum = Integer.parseInt((_pageNum == null)? "1" :_pageNum);
			 Map<String, Integer> pagingMap =new HashMap<String, Integer>(); 
			 pagingMap.put("section", section);
			 pagingMap.put("pageNum", pageNum); 
			 mostQnaMap.put("section",section);
			 mostQnaMap.put("pageNum", pageNum);
			 request.setAttribute("helpMap", helpMap);//조회된 글 목록을 articleList로 바인딩한 후 
			 nextPage="/notice/listHelp.jsp";// listArticles.jsp로 포워딩 합니다.
	  }else if(action.equals("/qnaWriteForm.do")) {
			nextPage="/qnainfo/qnaWriteForm.jsp";//글쓰기창을 나타내줌
			System.out.println(nextPage);
	  }else if(action.equals("/addWrite.do")) {
	         String category = request.getParameter("category");
	         String mosttitle = request.getParameter("mosttitle");
	         String mostcontents = request.getParameter("mostcontents");
	         MostQnaVO mostQnaVO=new MostQnaVO(category, mosttitle, mostcontents);
	         mostQnaDAO.addMostQna(mostQnaVO);
	         request.setAttribute("msg", "addWrite");
	         nextPage="/mostqna/listMostQna.do";
	         System.out.println(nextPage);
	  }else if(action.equals("/qnaWriteForm.do")) {
	         nextPage="/qnaWriteForm.jsp";
	  }else if(action.equals("/modQnaWriteForm.do")){
		  try {
		  	 int mostnum=0;
	    	 mostnum =Integer.parseInt(request.getParameter("mostnum"));
	    	 System.out.println(mostnum);
	    	 MostQnaVO mosFindInfo = mostQnaDAO.findMostQna(mostnum);
	    	 request.setAttribute("mosFindInfo",mosFindInfo);
	    	 nextPage="/qnainfo/modQnaWriteForm.jsp";
		  }catch(Exception e) {
			  System.out.println("mostnum에러");
		  }
	  }else if (action.equals("/modMostQna.do")){
    	  int mostnum = Integer.parseInt(request.getParameter("mostnum"));
    	  System.out.println(mostnum);
    	  String category = request.getParameter("category");
    	  String mosttitle = request.getParameter("mosttitle");
    	  String mostcontents = request.getParameter("mostcontents");
    	  MostQnaVO mostQnaVO =new MostQnaVO(mostnum,category, mosttitle, mostcontents);
    	  mostQnaDAO.modMostQna(mostQnaVO);
    	  request.setAttribute("msg", "modified");
    	  nextPage="/mostqna/listMostQna.do";
      }else if (action.equals("/delMostQna.do")){
     	  int mostnum = Integer.parseInt(request.getParameter("mostnum"));
     	  System.out.println(mostnum);
    	  mostQnaDAO.delMostQna(mostnum);
     	  request.setAttribute("msg", "deleted");
     	  nextPage="/mostqna/listMostQna.do";
      }else{
		  	List<MostQnaVO> mostQnaList=mostQnaDAO.listMostQna();
	         request.setAttribute("mostQnaList",mostQnaList);
	         nextPage="/servicecenterquestion.jsp";

	  }
      RequestDispatcher dispatcher=request.getRequestDispatcher(nextPage);
      dispatcher.forward(request, response);
   }
}