package goodsList;

import java.io.File;
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
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FileUtils;

import goods.GoodsDAO;
import goods.GoodsVO;
import member.MemberDAO;
import qna.QnaDAO;
import qna.QnaVO;
import review.ReviewDAO;
import review.ReviewVO;




@WebServlet("/good1/*")
public class GoodsListController extends HttpServlet {
	GoodsListDAO goodListDAO;
	GoodsDAO goodsDAO;
	QnaDAO qnaDAO;
	ReviewDAO reviewDAO;
	MemberDAO memberDAO;

	@Override
	public void init() throws ServletException {
		goodListDAO = new GoodsListDAO();
		goodsDAO = new GoodsDAO();
		qnaDAO = new QnaDAO();
		reviewDAO = new ReviewDAO();
		memberDAO = new MemberDAO();
	}

	private static String ART_IMAGE_REPO1 = "C:\\myJSP\\kurlyspace\\MarketKurly\\src\\main\\java\\webapp\\mkurly\\상세페이지\\upload";

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doHandle(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doHandle(request, response);
	}

	private void doHandle(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String nextPage;
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String action = request.getPathInfo();
		//System.out.println("액션 실행중>>" + action);
		if (action.equals("/goodslist.do")) {
			System.out.println(action);
			List<GoodsListVO> glist = goodListDAO.goodslist();
			request.setAttribute("glist", glist);
			nextPage="/mkurly/newproduct.jsp";
		//품목별 찾는방법
		}else if (action.equals("/search.do")){
			System.out.println(action);
			String keyword = request.getParameter("keyword");
			System.out.println(keyword);
			List<GoodsListVO> findlist = goodListDAO.findlist(keyword);
			request.setAttribute("findlist", findlist);
			nextPage = "/mkurly/FindProduct.jsp";
		//단어별검색	
		}else if(action.equals("/detailsearch.do")){
			String keyword = request.getParameter("keyword");
			System.out.println(keyword);
			List<GoodsListVO> findlist = goodListDAO.findword(keyword);
			request.setAttribute("findlist", findlist);
			nextPage = "/mkurly/FindProduct.jsp";
		//높은가격순	
		}else if(action.equals("/highsearch.do")){
			List<GoodsListVO> findlist = goodListDAO.findhigh();
			request.setAttribute("findlist", findlist);
			nextPage = "/mkurly/FindProduct.jsp";
		//낮은가격순	
		}else if(action.equals("/lowsearch.do")){
			List<GoodsListVO> findlist = goodListDAO.findlow();
			request.setAttribute("findlist", findlist);
			nextPage = "/mkurly/FindProduct.jsp";
		//미만가격순	
		}else if(action.equals("/pricesearch.do")){
			int keyword = Integer.parseInt(request.getParameter("keyword"));
			List<GoodsListVO> findlist = goodListDAO.findprice(keyword);
			request.setAttribute("findlist", findlist);
			nextPage = "/mkurly/FindProduct.jsp";	
		}else if (action.equals("/goodsdetail.do")) {
		      
	         String goodscode = request.getParameter("goodscode");
	         System.out.println(goodscode+"여기");
	         String goodsprice = request.getParameter("goodsprice");
	         System.out.println(goodsprice);
	         String goodstitle = request.getParameter("goodstitle");
	         System.out.println(goodstitle);

	         List<ReviewVO> ReviewList = reviewDAO.selectAllReview(goodscode);
	         request.setAttribute("ReviewList", ReviewList);

	         List<QnaVO> QnaList = qnaDAO.selectAllQna(goodscode);
	         request.setAttribute("Qlist", QnaList);

	         List<GoodsVO> gdetail = goodsDAO.goodsdetail(goodscode);
	         request.setAttribute("gdetail", gdetail);// 리스트를 보낸다.

	         request.setAttribute("goodscode", goodscode);
	         request.setAttribute("goodsprice", goodsprice);
	         request.setAttribute("goodstitle", goodstitle);

	         nextPage = "/mkurly/productDetailPage.jsp";
		}else if (action.equals("/goodsdetail1.do")){
		       HttpSession session = request.getSession();
	           String id = (String)session.getAttribute("sessionID");
	            String goodscode=request.getParameter("goodscode");
	            int result = memberDAO.findwishitem(goodscode, id);
	            System.out.println(goodscode);
	            List<GoodsVO> gdetail = goodsDAO.goodsdetail(goodscode);
	            System.out.println(gdetail.isEmpty());//리스트가  NULL인지 아닌지 확인한다.
	            System.out.println(gdetail.toString());//gdetail hash 값으로 나온다. toString  문자열로 바꿔줘야지 확인 가능
	            request.setAttribute("gdetail", gdetail);//리스트를 보낸다.
	            request.setAttribute("wishResult", result);
	
	            System.out.println(action +"실행중");
	            
	            nextPage= "/mkurly/productDetailPage.jsp";

		} else if (action.equals("/QnaAdd.do")) {
	         HttpSession session = request.getSession();
	         String _goodscode = request.getParameter("goodscode");
	         GoodsVO goodsvo = goodsDAO.findimg(_goodscode);
	         System.out.println(goodsvo);
	         request.setAttribute("goodsimg", goodsvo);
	         request.setAttribute("goodscode", _goodscode);
	         nextPage = "/mkurly/qnaForm.jsp";
	         // 게시글 추가
	      } else if (action.equals("/insertQna.do")) {
	          String id = request.getParameter("id");
	          String name = request.getParameter("name");
	          String qnatitle = request.getParameter("qnatitle");
	          String qnacontents = request.getParameter("qnacontents");
	          String goodscode = request.getParameter("goodscode");

	          QnaVO qnaVO = new QnaVO();
	          qnaVO.setId(id);
	          qnaVO.setName(name);
	          qnaVO.setQnatitle(qnatitle);
	          qnaVO.setQnacontents(qnacontents);
	          qnaVO.setGoodscode(goodscode);
	          qnaDAO.insertQna(qnaVO);
	          nextPage = "/good1/goodsdetail.do";
	          // 해당 게시글 삭제할때
	       }else if (action.equals("/qndDel.do")) {
	           String qnanum = request.getParameter("qnanum");
	           System.out.println(qnanum);
	           String goodscode = request.getParameter("goodscode");
	           request.setAttribute("goodscode", goodscode);
	           qnaDAO.delQna(qnanum);
	           nextPage = "/good1/goodsdetail.do?goodscode="+goodscode;
	           // 게시글 수정페이지 이동
	        } else if (action.equals("/qnaMod.do")) {
	            String qnanum = request.getParameter("qnanum");
	            QnaVO qnaVO = qnaDAO.findqna(qnanum);
	            request.setAttribute("qnaInfo", qnaVO);

	            String goodscode = request.getParameter("goodscode");
	            GoodsVO goodsvo = goodsDAO.findimg(goodscode);
	            request.setAttribute("gimg", goodsvo);

	            request.setAttribute("goodscode", goodscode);

	            nextPage = "/mkurly/modForm.jsp";

	         } else if (action.equals("/qnaModOk.do")) {

	             String qnanum = request.getParameter("qnanum");
	             String id = request.getParameter("id");
	             String name = request.getParameter("name");
	             String qnatitle = request.getParameter("qnatitle");
	             String qnacontents = request.getParameter("qnacontents");
	             String goodscode = request.getParameter("goodscode");
	             QnaVO qnaVO = new QnaVO(id, name, goodscode, qnatitle, qnacontents, qnanum);
	             qnaDAO.updateQna(qnaVO);

	             nextPage = "/good1/goodsdetail.do";
	             // 후기작성
	          } else if (action.equals("/reviewAdd.do")) {
	              String goodscode = request.getParameter("goodscode");
	              GoodsVO goodsvo = goodsDAO.findimg(goodscode);
	              System.out.println(goodsvo);
	              request.setAttribute("goodsimg", goodsvo);
	              request.setAttribute("goodscode", goodscode);
	              nextPage = "/mkurly/reviwForm.jsp";
	           } else if (action.equals("/insertReview.do")) {
			int articleNo=0;
			Map<String , String>articleMap=upload(request, response);
			String id = articleMap.get("id");
			String goodscode = articleMap.get("goodscode");
			String reviewnum = articleMap.get("reviewnum");
			String reviewcontents = articleMap.get("reviewcontents");
			String reviewimage = articleMap.get("reviewimage");
			String goodsname = articleMap.get("goodsname");
			
//			String id = request.getParameter("id");
//			String goodscode = request.getParameter("goodscode");
//			String reviewnum = request.getParameter("reviewnum");
//			String reviewcontents = request.getParameter("reviewcontents");
//			String reviewimage = request.getParameter("reviewimage");
//			String goodsname = request.getParameter("goodsname");

			ReviewVO rVO = new ReviewVO();
			rVO.setId(id);
			rVO.setGoodscode(goodscode);
			rVO.setReviewnum(reviewnum);
			rVO.setReviewcontents(reviewcontents);
			rVO.setReviewimage(reviewimage);
			rVO.setGoodsname(goodsname);
			articleNo = reviewDAO.insertRview(rVO);
			if(reviewimage != "" && reviewimage.length() !=0) {
				File srcFile = new File(ART_IMAGE_REPO1+"\\"+"temp\\"+reviewimage);
				File destDir= new File(ART_IMAGE_REPO1+"\\"+ articleNo);
				destDir.mkdir();//글번호생성
				FileUtils.moveFileToDirectory(srcFile, destDir, true);
				srcFile.delete();
			}

			nextPage = "/good1/goodsdetail.do";
	    	  
	      }else if(action.equals("/rDelete.do")) {
	    	  String reviewnum = request.getParameter("reviewnum");
	    	  reviewDAO.delReview(reviewnum);
	    	  String goodscode = request.getParameter("goodscode");
	    	  System.out.println(goodscode);
			  request.setAttribute("goodscode", goodscode);
	    	  nextPage="/good1/goodsdetail.do";
	    	  
	      }else if(action.equals("/rModify.do")) {
	    	 String reviewnum = request.getParameter("reviewnum");
	    	 System.out.println(reviewnum);
	    	 ReviewVO reviewVO = reviewDAO.findreview(reviewnum);
	    	 request.setAttribute("reviewinfo", reviewVO);
	    	 String goodscode = request.getParameter("goodscode");
	    	 System.out.println(goodscode);
	    	 request.setAttribute("goodscode", goodscode);
	    	 nextPage = "/mkurly/ModReviwForm.jsp";
	    	  
	      }else if(action.equals("/ModReviwOk.do")) {
	    	  String Reviewcontents = request.getParameter("Reviewcontents");
	    	  System.out.println(Reviewcontents);
	    	  String reviewimage = request.getParameter("reviewimage");
	    	  System.out.println(reviewimage);
	    	  String reviewnum =request.getParameter("reviewnum");
	    	  System.out.println(reviewnum);
	    	  ReviewVO reviewVO =  new ReviewVO(reviewnum, Reviewcontents, reviewimage);
	    	  reviewDAO.updatereview(reviewVO);
	    	  String goodscode = request.getParameter("goodscode");
	    	  nextPage="/good1/goodsdetail.do";
	  	  
	      }
	      else {
	    	  System.out.println(action);
	    	  nextPage = "/mkurly/newproduct.jsp";
	      }
		
		
	      RequestDispatcher dispatcher=request.getRequestDispatcher(nextPage);
		      dispatcher.forward(request, response);
	      
	}


//이미지 파일 업로드 + 새 글 관련 정보 저장
private Map<String, String> upload(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      Map<String, String> articleMap=new HashMap<String, String>();
      String encoding="utf-8";
      File currentDirPath=new File(ART_IMAGE_REPO1);
      DiskFileItemFactory factory=new DiskFileItemFactory();
      factory.setRepository(currentDirPath);
      factory.setSizeThreshold(1024*1024); //웬만한 이미지 크기나 다 들어가나 이것보다 큰 크기의 이미지는 오류남
      ServletFileUpload upload=new ServletFileUpload(factory);
      try {
         List items=upload.parseRequest(request);
         for(int i=0; i<items.size(); i++) {
            FileItem fileItem=(FileItem)items.get(i);
            if(fileItem.isFormField()) {
               System.out.println(fileItem.getFieldName()+ "="+ fileItem.getString(encoding));
               //파일 업로드로 같이 전송된 새 글 관련 (제목 ,내용) 매개변수를 저장 한 후 변환 
               articleMap.put(fileItem.getFieldName(),fileItem.getString(encoding));
            }else {
               System.out.println("파라미터이름: "+fileItem.getFieldName());
               System.out.println("파일이름: " + fileItem.getName());
               System.out.println("파일크기: " + fileItem.getSize()+ "bytes");
               if(fileItem.getSize() > 0) {
                  int idx=fileItem.getName().lastIndexOf("\\");//74번쨰 줄에 이미지 있는 경로
                  if(idx == -1) {// C:\hj-lim\board\article_image로 돼서 이미지 경로를 못찾았으면
                     idx=fileItem.getName().lastIndexOf("/");
                  }
                  String fileName=fileItem.getName().substring(idx+1);
                  articleMap.put(fileItem.getFieldName(), fileName);
                  //업로드한 이미지를 일단 temp에 저장
                  File uploadFile=new File(currentDirPath+ "\\temp\\" + fileName);
                  fileItem.write(uploadFile);
               }
            }
         }
      } catch (Exception e) {
         System.out.println("파일 업로드 중 에러");
      }
      return articleMap;
}

}

