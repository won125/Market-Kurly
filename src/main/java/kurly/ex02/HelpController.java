package kurly.ex02;

import java.io.File;
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

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FileUtils;


@WebServlet("/help/*")
public class HelpController extends HttpServlet {
	private static String ART_IMAGE_REPO="C:\\help\\help_image";
	HelpService helpService;
	HelpVO helpVO;
	public void init(ServletConfig config) throws ServletException {
		helpService = new HelpService();
		helpVO=new HelpVO();
	}
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}

	
	protected void doHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nextPage="";
		PrintWriter pw;
		HttpSession session; //부모에 대한 답글을 저장하기 위해 세션을 사용
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String action = request.getPathInfo();//요청명을 가져옴.
		System.out.println("요청 이름 : " + action);
		try {
			List<HelpVO> helpList = new ArrayList<HelpVO>();
			if(action == null || action.equals("/listHelp.do")) {//action 값이 listArticles.do면 전체 값을 조회
				 String _section =request.getParameter("section"); 
				 String _pageNum=request.getParameter("pageNum"); 
				 int section = Integer.parseInt((_section ==null)? "1" : _section); 
				 int pageNum = Integer.parseInt((_pageNum == null)? "1" :_pageNum);
				 Map<String, Integer> pagingMap =new HashMap<String, Integer>(); 
				 pagingMap.put("section", section);
				 pagingMap.put("pageNum", pageNum); 
				 Map helpMap=helpService.listHelp(pagingMap); 
				 helpMap.put("section",section);
				 helpMap.put("pageNum", pageNum);
				 System.out.println(section);
				 System.out.println(pageNum);
				 request.setAttribute("helpMap", helpMap);//조회된 글 목록을 articleList로 바인딩한 후 
				 nextPage="/mkurly/servicecenter.jsp";// listArticles.jsp로 포워딩 합니다.
			}else if(action.equals("/helpWriteForm.do")) {
				nextPage="/notice/helpWriteForm.jsp"; //글쓰기창을 나타내줌
			}else if(action.equals("/addHelp.do")) { //실제 디비에 새 글 쓰기 작업을 수행
	            int helpnum=0;
	            Map<String, String> helpMap = upload(request, response); //파일 업로드 기능을 사용하기 위해 upload로 요청을 전달
	            String helptitle=helpMap.get("helptitle");
	            String helpcontents=helpMap.get("helpcontents");
	            String imageFileName=helpMap.get("imageFileName");
	            helpVO.setHelpnum(helpnum);
	            helpVO.setAdmin("admin");
	            helpVO.setHelptitle(helptitle);
	            helpVO.setHelpcontents(helpcontents);
	            helpVO.setImageFileName(imageFileName);
	            helpnum=helpService.addHelp(helpVO);
	            if(imageFileName != null && imageFileName.length() != 0) {//이미지를 첨부한 경우에만 수행
	               File srcFile=new File(ART_IMAGE_REPO+"\\"+"temp\\"+imageFileName); //File srcFile=new File(imageFileName); temp폴더에 임시로 업로드 된 파일 객체를 생성
	               File destDir=new File(ART_IMAGE_REPO+"\\"+helpnum);//글 번호로 폴더를 생성
	               destDir.mkdir(); //글 번호로 폴더를 생성
	               FileUtils.moveFileToDirectory(srcFile, destDir, true);//temp폴더의 파일을 글 번호 이름을 가진 폴더로 이동
	               srcFile.delete();
	            }
	            pw=response.getWriter();
	            pw.print("<script>" + "alert('새 글을 추가했습니다');" +
	            "location.href='" + request.getContextPath() +
	            "/help/listHelp.do';" + "</script>"); //location.href: 브라우저 창 주소
	            return;
			}else if(action.equals("/viewHelp.do")) {
	        	   	String helpnum=request.getParameter("helpnum");
		            System.out.println("helpnum=" + helpnum);
		            helpVO=helpService.viewHelp(Integer.parseInt(helpnum));
		            request.setAttribute("help", helpVO);
		            nextPage="/mkurly/servicecenterinfo.jsp";

	         }else if (action.equals("/modHelp.do")){
	        	 Map<String, String> helpMap = upload(request,response);
	        	 int helpnum = Integer.parseInt(helpMap.get("helpnum"));
	        	 helpVO.setHelpnum(helpnum);
	        	 String helptitle=helpMap.get("helptitle");
	        	 String helpcontents = helpMap.get("helpcontents");
	        	 String imageFileName=helpMap.get("imageFileName");
	        	 helpVO.setHelpnum(helpnum);
	        	 helpVO.setHelptitle(helptitle);
	        	 helpVO.setImageFileName(imageFileName);
	        	 helpVO.setAdmin("admin");
	        	 helpVO.setHelpcontents(helpcontents);
	        	 helpService.modHelp(helpVO);
	        	    if(imageFileName != null && imageFileName.length() != 0) {//이미지를 첨부한 경우에만 수행
	        	    	String originalFileName = helpMap.get("originalFileName");
	        	    	//temp 폴더에 임시로 업로드된 파일객체를 생성
	 	               File srcFile=new File(ART_IMAGE_REPO+"\\"+"temp\\"+imageFileName);
	 	               //File srcFile=new File(imageFileName); temp폴더에 임시로 업로드 된 파일 객체를 생성
	 	               File destDir=new File(ART_IMAGE_REPO+"\\"+helpnum);
	 	               //글 번호로 폴더를 생성
	 	               destDir.mkdir(); 	 	    
	 	               FileUtils.moveFileToDirectory(srcFile, destDir, true);//temp폴더의 파일을 글 번호 이름을 가진 폴더로 이동
	 	               File oldFile = new File(ART_IMAGE_REPO +"\\"+helpnum+"\\"+originalFileName);
	 	               oldFile.delete();
	 	            }
	        	    pw = response.getWriter();
	        	    pw.print("<script>" + "alert('글을 수정했습니다');" + "location.href='"+request.getContextPath()+
	        	    		"/help/viewHelp.do?helpnum="+ helpnum +"';" +"</script>");
	        	    return;
	         }else if(action.equals("/removeHelp.do")) {
	        	 int helpnum = Integer.parseInt(request.getParameter("helpnum"));
	        	 List<Integer> helpnumList = helpService.removeHelp(helpnum);//articleNo를 매개변수로 보내줘서 articleNoList를 받음
	        	 //삭제된 글의 업로드된 이미지 삭제하는 작업
	        	 for(int no: helpnumList) {
	        		 File imgDir = new File(ART_IMAGE_REPO + "\\" + no);
	        		 if(imgDir.exists()) {
	        			 FileUtils.deleteDirectory(imgDir);
	        		 }
	        	 }
	        	 pw=response.getWriter();
	        	 pw.print("<script>" + "alert('글을 삭제했습니다.');"+"location.href='"+request.getContextPath() + "/help/listHelp.do';" + "</script>");
	        	 return;
	         }

			RequestDispatcher dispatcher=request.getRequestDispatcher(nextPage);
	        dispatcher.forward(request, response);
		}catch (Exception e) {
			System.out.println("여기에러"+e.getMessage());
	}
}
	
	
	private Map<String, String> upload(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	      Map<String, String> helpMap=new HashMap<String, String>();
	      String encoding="utf-8";
	      File currentDirPath=new File(ART_IMAGE_REPO);
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
	               helpMap.put(fileItem.getFieldName(),fileItem.getString(encoding));
	            }else {
	               System.out.println("파라미터이름: "+fileItem.getFieldName());
	               System.out.println("파일이름: "+fileItem.getName());
	               System.out.println("파일크기: "+fileItem.getSize()+ "bytes");
	               if(fileItem.getSize() > 0) {
	                  int idx=fileItem.getName().lastIndexOf("\\");//74번쨰 줄에 이미지 있는 경로
	                  if(idx == -1) {// C:\hj-lim\board\article_image로 돼서 이미지 경로를 못찾았으면
	                     idx=fileItem.getName().lastIndexOf("/");
	                  }
	                  String fileName=fileItem.getName().substring(idx+1);
	                  helpMap.put(fileItem.getFieldName(), fileName);
	                  //업로드한 이미지를 일단 temp에 저장
	                  File uploadFile=new File(currentDirPath+ "\\temp\\" + fileName);
	                  fileItem.write(uploadFile);
	               }
	            }
	         }
	      } catch (Exception e) {
	         System.out.println("파일 업로드 중 에러");
	      }
	      return helpMap;
	}
}
