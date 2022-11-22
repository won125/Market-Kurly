package kurly.ex02;

import java.net.URLEncoder;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class HelpDAO {
		private DataSource dataFactory;
		private Connection conn;
		private PreparedStatement pstmt;
		
		public HelpDAO() {
			try {
				Context ctx = new InitialContext();
				Context envContext =(Context)ctx.lookup("java:/comp/env");
				dataFactory = (DataSource)envContext.lookup("jdbc/oracle");
				
			}catch (Exception e){
				System.out.println("DB 연결 오류");
			}
		}	
		
		//글 목록 페이징 메서드
		public List selectAllArticles(Map<String, Integer> pagingMap){
			List<HelpVO> helpList = new ArrayList<HelpVO>();
			int section = (Integer)pagingMap.get("section");
			int pageNum = (Integer)pagingMap.get("pageNum");
			try {
				conn=dataFactory.getConnection();
				String query="select * from (select rownum as recnum,kurly_help.* from(select * from kurly_help order by helpnum) kurly_help) where recnum between (?-1)*100+(?-1)*10+1 AND (?-1)*100+?*10";
				//페이징 처리 section이 3 pagingNum이 4면 (3-1)*100 +(4-1)*10+1 해서 231번재글 즉 3섹션의 31번쨰글
				System.out.println(query);
				pstmt=conn.prepareStatement(query);
				pstmt.setInt(1, section);
				System.out.println(section);
				System.out.println(pageNum);
				pstmt.setInt(2, pageNum);
				pstmt.setInt(3, section);
				pstmt.setInt(4, pageNum);
				ResultSet rs = pstmt.executeQuery();
				while(rs.next()) {
					int helpnum =rs.getInt("helpnum");
					String helptitle=rs.getString("helptitle");
					String helpcontents = rs.getString("helpcontents");
					String admin=rs.getString("admin");
					Date helpwritedate=rs.getDate("helpwritedate");
					HelpVO help = new HelpVO();
					help.setHelpnum(helpnum);
					help.setHelptitle(helptitle);
					help.setHelpcontents(helpcontents);
					help.setAdmin(admin);
					help.setHelpwritedate(helpwritedate);
					helpList.add(help);
					
				}
				rs.close();
				pstmt.close();
				conn.close();
			}catch (Exception e) {
				System.out.println("글목록 페이징 조회중 에러" + e.getMessage());
			}
			return helpList;
		}
		
		//글 번호 생성 메서드
		private int getNewArticleNO() {
			try {
				conn=dataFactory.getConnection();
				//기본 글 번호 중 max 함수를 이용해 가장 큰 번호를 조회
				String query="select max(helpnum) from kurly_help";
				System.out.println(query);
				pstmt=conn.prepareStatement(query);
				ResultSet rs =pstmt.executeQuery(query);
				//가장 큰 번호에 1을 더한 번호를 반환 
				if(rs.next()) {
					return(rs.getInt(1)+1);
				}
				rs.close();
				pstmt.close();
				conn.close();
			} catch (Exception e) {
				System.out.println("글번호 생성중 에러");
			}
			return 0;
		}
		
		//새 글 추가 메서드
				public int insertNewArticle(HelpVO help) {
					int helpnum=getNewArticleNO();//db연결안되도 선언되게
					try {
						conn=dataFactory.getConnection();
						String helptitle=help.getHelptitle();
						String helpcontents=help.getHelpcontents();
						String admin=help.getAdmin();
						String imageFileName=help.getImageFileName();
						String query="insert into kurly_help(helpnum, helptitle,helpcontents,admin,imageFileName) values (?,?,?,?,?)";
						System.out.println(query);
						pstmt =conn.prepareStatement(query);
						pstmt.setInt(1, helpnum);
						pstmt.setString(2,helptitle);
						pstmt.setString(3, helpcontents);
						pstmt.setString(4, admin);
						pstmt.setString(5, imageFileName);
						pstmt.execute();
						pstmt.close();
						conn.close();
					}catch (Exception e) {
						System.out.println("새 글 추가중 에러" +e.getMessage());
					}
						return helpnum;
				}
				
				//선택 글 상세내용
				public HelpVO selectHelp(int helpnum) {
					HelpVO help = new HelpVO();
					try {
						conn =dataFactory.getConnection();
						String query ="select helpnum, " + "NVL(imageFileName,'null') as imageFileName, helptitle,helpcontents,admin, helpwritedate from kurly_help where helpnum=?";
						//NVL은 해당 값이 있으면 그 값을 전달하고 없으면 null을 전달해줌
						System.out.println(query);
						pstmt=conn.prepareStatement(query);
						pstmt.setInt(1, helpnum);
						ResultSet rs = pstmt.executeQuery();
						rs.next();
						int _helpnum = rs.getInt("helpnum");
						String helptitle=rs.getString("helptitle");
						String helpcontents = rs.getString("helpcontents");
						String admin = rs.getString("admin");
						String imageFileName = URLEncoder.encode(rs.getString("imageFileName"),"utf-8");
						if(imageFileName.equals("null")) {
							imageFileName=null;
						}
						Date helpwritedate=rs.getDate("helpwriteDate");
						//ArticleVo에 저장
						help.setHelpnum(_helpnum);
						help.setHelptitle(helptitle);
						help.setAdmin(admin);
						help.setHelpcontents(helpcontents);
						help.setHelpwritedate(helpwritedate);
						help.setImageFileName(imageFileName);
						
					} catch (Exception e) {
						System.out.println("글 상세 구현 중 에러" + e.getMessage());
					}
					return help;
				}
				
				//글 수정하기
				public void updateHelp(HelpVO help) {
					int helpnum = help.getHelpnum();
					String helptitle=help.getHelptitle();
					String helpcontents = help.getHelpcontents();
					String imageFileName = help.getImageFileName();
					try {
						conn=dataFactory.getConnection();
						String query="update kurly_help set helptitle=?, helpcontents=?";
						if(imageFileName != null && imageFileName.length() !=0) {
							query +=", imageFileName=?";
						}
						query+=" where helpnum=?";
						System.out.println(query);
						pstmt=conn.prepareStatement(query);
						pstmt.setString(1, helptitle);
						pstmt.setString(2, helpcontents);
						if(imageFileName != null && imageFileName.length() != 0) {
							pstmt.setString(3, imageFileName);
							pstmt.setInt(4, helpnum);
						}else {
							pstmt.setInt(3, helpnum);
						}
						pstmt.executeUpdate();
						pstmt.close();
						conn.close();
					} catch (Exception e) {
						System.out.println("DB 수정중 에러");
					}
				}
				//삭제한 글 번호 목록
				public List<Integer> selectRemoveHelp(int helpnum){
					List<Integer> helpnumList = new ArrayList<Integer>();
					try {
						conn=dataFactory.getConnection();
						String query = "SELECT helpnum FROM kurly_help helpnum=?";
						System.out.println(query);
						pstmt=conn.prepareStatement(query);
						pstmt.setInt(1, helpnum);
						ResultSet rs= pstmt.executeQuery();
						while(rs.next()) {
							helpnum=rs.getInt("helpnum");
							helpnumList.add(helpnum);
						}
						pstmt.close();
						conn.close();
					} catch (Exception e) {
						System.out.println("글 번호 처리 중 에러"+e.getMessage());
					}
					return helpnumList;
				}
				
				//글삭제
				public void deleteHelpnum(int helpnum) {
					try {
						conn=dataFactory.getConnection();
						String query="delete from kurly_help where helpnum=?";
						System.out.println(query);
						pstmt=conn.prepareStatement(query);
						pstmt.setInt(1, helpnum);
						pstmt.executeUpdate();
						pstmt.close();
						conn.close();
					} catch (Exception e) {
						System.out.println("글 삭제중 에러" +e.getMessage());
					}
				}
				
				//전체 글 목록 수
				public int selectToHelp() {
					try {
						conn=dataFactory.getConnection();
						String query="select count(helpnum) from kurly_help";
						System.out.println(query);
						pstmt=conn.prepareStatement(query);
						ResultSet rs = pstmt.executeQuery();
						if(rs.next()) {
							return (rs.getInt(1));
						}
						rs.close();
						pstmt.close();
						conn.close();
			
					} catch (Exception e) {
						System.out.println("글 목록 수 처리 중 에러");
					}
					return 0;
				}
		
	}
