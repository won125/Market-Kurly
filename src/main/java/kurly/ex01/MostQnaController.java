package kurly.ex01;

import java.io.IOException;



import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/mostqna/*")
public class MostQnaController extends HttpServlet {
	MostQnaService mostQnaService;
	MostQnaVO mostQnaVO;
	MostQnaDAO mostQnaDAO = new MostQnaDAO();
	public void init(ServletConfig config) throws ServletException {
		mostQnaService = new MostQnaService();
		mostQnaVO = new MostQnaVO();
	}
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}

   protected void doHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	  String nextPage=null;
	  PrintWriter pw;
	  HttpSession session;
	  request.setCharacterEncoding("utf-8");
	  response.setContentType("text/html;charset=utf-8");
	  String action=request.getPathInfo();
	  System.out.println("요청 이름"+action);//요청명을 가져옴.
	  try {
		  List<MostQnaVO> mostQnaList = new ArrayList<MostQnaVO>();
				if(action == null || action.equals("/listMostQna.do")) {//action 값이 listArticles.do면 전체 값을 조회
					 String _section =request.getParameter("section"); 
					 String _pageNum=request.getParameter("pageNum"); 
					 int section = Integer.parseInt((_section ==null)? "1" : _section); 
					 int pageNum = Integer.parseInt((_pageNum == null)? "1" :_pageNum);
					 Map<String, Integer> pagingMap =new HashMap<String, Integer>(); 
					 pagingMap.put("section", section);
					 pagingMap.put("pageNum", pageNum); 
					 Map mostQnaMap=mostQnaService.listMostQna(pagingMap); 
					 mostQnaMap.put("section",section);
					 mostQnaMap.put("pageNum", pageNum);
					 request.setAttribute("mostQnaMap", mostQnaMap);//조회된 글 목록을 articleList로 바인딩한 후 
					 nextPage="/mkurly/servicecenterquestion.jsp";// listArticles.jsp로 포워딩 합니다.
				}else if(action.equals("/qnaWriteForm.do")) {
				nextPage="/qnainfo/qnaWriteForm.jsp";//글쓰기창을 나타내줌
				System.out.println(nextPage);
				}else if(action.equals("/addWrite.do")) {
					 int mostnum;
					 String mosttitle=request.getParameter("mosttitle");
			         String mostcontents=request.getParameter("mostcontents");
			         String category=request.getParameter("category");
			         mostQnaVO.setCategory(category);
			         mostQnaVO.setMosttitle(mosttitle);
			         mostQnaVO.setMostcontents(mostcontents);
			         mostnum=mostQnaService.addMostQna(mostQnaVO);
			         pw=response.getWriter();
			            pw.print("<script>" + "alert('새 글을 추가했습니다');" +
			            "location.href='" + request.getContextPath() +
			            "/mostqna/listMostQna.do';" + "</script>"); //location.href: 브라우저 창 주소
			            return;
			  }else if(action.equals("/modQnaWriteForm.do")){
				  	 int mostnum= Integer.parseInt(request.getParameter("mostum"));
			         String mosttitle=request.getParameter("mosttitle");
			         String mostcontents=request.getParameter("mostcontents");
			         String category=request.getParameter("category");
			         MostQnaVO mostQnaVO=new MostQnaVO(mostnum, mosttitle, mostcontents, category);
			         mostQnaDAO.modMostQna(mostQnaVO);
			         request.setAttribute("msg", "modified");
			         nextPage="/mostqna/listMostQna.do";
		      }else if(action.equals("/delMember.do")) {
		          int mostnum=Integer.parseInt(request.getParameter("mostnum"));
		          mostQnaDAO.delMember(mostnum);
		          request.setAttribute("msg", "deleted");
		          nextPage="/mostqna/listMostQna.do";//nextPage="/meminfo/listMembers.jsp"
		       }
		      RequestDispatcher dispatcher=request.getRequestDispatcher(nextPage);
		      dispatcher.forward(request, response);
		      }catch (Exception e) {
		    	 e.printStackTrace();
				System.out.println("여기 에러"+e.getMessage());
			}
		  }
   	}

 

