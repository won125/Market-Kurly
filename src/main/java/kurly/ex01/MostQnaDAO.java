package kurly.ex01;

import java.io.Console;
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

import kurly.ex02.HelpVO;

public class MostQnaDAO {
	private DataSource dataFactory;
	private Connection conn;
	private PreparedStatement pstmt;

	public MostQnaDAO() {
		try {
			Context ctx = new InitialContext();
			Context envContext =(Context)ctx.lookup("java:/comp/env");
			dataFactory = (DataSource)envContext.lookup("jdbc/oracle");

		}catch (Exception e){
			System.out.println("DB 연결 오류");
		}
	}
	//글목록 페이징 메서드
	public List selectAllArticles(Map<String, Integer> pagingMap){
		List<MostQnaVO> mostQnaList = new ArrayList<MostQnaVO>();
		int section = (Integer)pagingMap.get("section");
		int pageNum = (Integer)pagingMap.get("pageNum");
		try {
			conn=dataFactory.getConnection();
			String query="SELECT * FROM (SELECT ROWNUM AS recNum, mostnum, mosttitle, mostcontents from kurly_mostqna) kurly_qna WHERE recNum BETWEEN (?-1)*100+(?-1)*10+1 AND (?-1)*100+?*10";
			//페이징 처리 section이 3 pagingNum이 4면 (3-1)*100 +(4-1)*10+1 해서 231번재글 즉 3섹션의 31번쨰글
			System.out.println(query);
			pstmt=conn.prepareStatement(query);
			pstmt.setInt(1, section);
			pstmt.setInt(2, pageNum);
			pstmt.setInt(3, section);
			pstmt.setInt(4, pageNum);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {;
				int mostnum =rs.getInt("mostnum");
				String mosttitle=rs.getString("mosttitle");
				String mostcontents = rs.getString("mostcontents");
				String category = rs.getString("category");
				MostQnaVO mostQna = new MostQnaVO();
				mostQna.setCategory(category);
				mostQna.setMostnum(mostnum);
				mostQna.setMostcontents(mostcontents);
				mostQna.setMosttitle(mosttitle);
				mostQnaList.add(mostQna);
				
			}
			rs.close();
			pstmt.close();
			conn.close();
		}catch (Exception e) {
			System.out.println("글목록 페이징 조회중 에러" + e.getMessage());
		}
		return mostQnaList;
	}
	//글 목록
	   public List<MostQnaVO> listMostQna() {
	      List<MostQnaVO> mostQnaList=new ArrayList();
	      try {
	         conn=dataFactory.getConnection();
	         String query="select * from kurly_mostqna order by mostnum desc";
	         System.out.println(query);
	         pstmt=conn.prepareStatement(query);
	         ResultSet rs=pstmt.executeQuery();
	         while(rs.next()) {
	            int mostnum = rs.getInt("mostnum");
	            String category = rs.getString("category");
	            String mosttitle = rs.getString("mosttitle");
	            String mostcontents =rs.getString("mostcontents");
				MostQnaVO mostQnaVO=new MostQnaVO(mostnum,category,mosttitle,mostcontents);
				mostQnaList.add(mostQnaVO);
	         }
	         rs.close();
	         pstmt.close();
	         conn.close();
	      }catch (Exception e) {
	         System.out.println("DB 처리중 에러");
	         System.out.println(e.getMessage());
	      }
	      return mostQnaList;
	   }
	 //글 추가
		public void addMostQna(MostQnaVO mos) {
			try {
				conn = dataFactory.getConnection();
				int mostnum =getNewMostNum();
				String category=mos.getCategory();
				String mosttitle=mos.getMosttitle();
				String mostcontents=mos.getMostcontents();
				String query = "insert into kurly_mostqna (mostnum,category, mosttitle, mostcontents) values(?,?,?,?)";
				System.out.println(query);
				pstmt=conn.prepareStatement(query);
				pstmt.setInt(1,mostnum);
				pstmt.setString(2,category);
				pstmt.setString(3,mosttitle);
				pstmt.setString(4,mostcontents);
				pstmt.executeUpdate();
				pstmt.close();
				conn.close();
			} catch (Exception e) {
				System.out.println("등록중 오류 발생" +e.getMessage());
				System.out.println(e.getMessage());
			}
		}

		//글 번호 생성 메서드
		private int getNewMostNum() {
			try {
				conn=dataFactory.getConnection();
				//기본 글 번호 중 max 함수를 이용해 가장 큰 번호를 조회
				String query="select max(mostnum) from kurly_mostqna";
				System.out.println(query);
				pstmt=conn.prepareStatement(query);
				ResultSet rs =pstmt.executeQuery(query);
				//가장 큰 번호에 1을 더한 번호를 반환 
				if(rs.next()) {
					return (rs.getInt(1)+1);
				}
				rs.close();
				pstmt.close();
				conn.close();

			} catch (Exception e) {
				System.out.println("글번호 생성중 에러");
			}
			return 1;
		}



		//수정할 회원정보 찾기
		public MostQnaVO findMostQna(int _mostnum) {
			MostQnaVO mosFindInfo=null;
			try {
				conn = dataFactory.getConnection();
				String query ="select * from kurly_mostqna where mostnum=?";
				pstmt = conn.prepareStatement(query);
				pstmt.setInt(1, _mostnum);
				System.out.println(query);
				ResultSet rs =pstmt.executeQuery();
				rs.next();
				int mostnum=rs.getInt("mostnum");
				String category=rs.getString("category");
				String mosttitle=rs.getString("mosttitle");
				String mostcontents =rs.getString("mostcontents");
				mosFindInfo = new MostQnaVO(mostnum,category, mosttitle, mostcontents);
				pstmt.close();
				conn.close();
				rs.close();
			} catch (Exception e) {
				System.out.println("수정할 자료 찾는 중 에러발생"+e.getMessage());
			}
			return mosFindInfo;
		}
		//회원정보 수정
		public void modMostQna(MostQnaVO mostQnaVO) {
			int mostnum = mostQnaVO.getMostnum();
			String category = mostQnaVO.getCategory();
			String mosttitle = mostQnaVO.getMosttitle();
			String mostcontents = mostQnaVO.getMostcontents();
			try {
				conn=dataFactory.getConnection();
				String query="update kurly_mostqna set category=?, mosttitle=?, mostcontents=? where mostnum=?";
				System.out.println(query);
				pstmt = conn.prepareStatement(query);
				pstmt.setString(1, category);
				pstmt.setString(2, mosttitle);
				pstmt.setString(3, mostcontents);
				pstmt.setInt(4, mostnum);
				System.out.println(mostnum+category+mosttitle+mostcontents);
				pstmt.executeUpdate();
				pstmt.close();
				conn.close();
			} catch (Exception e) {
				System.out.println("수정중 오류발생!!");
			}
		}

		public void delMostQna(int mostnum) {
			try {
				conn=dataFactory.getConnection();
				String query="delete from kurly_mostqna where mostnum=?";
				System.out.println(query);
				pstmt = conn.prepareStatement(query);
				pstmt.setInt(1, mostnum);
				pstmt.executeUpdate();
				pstmt.close();
				conn.close();
			} catch (Exception e) {
				System.out.println("삭제중 오류발생!!");
			}
		}



}