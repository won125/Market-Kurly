package kurly.ex01;

import java.sql.Connection;
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
	public List selectAllMostQna(Map<String, Integer> pagingMap){
		List<MostQnaVO> mostQnaList = new ArrayList<MostQnaVO>();
		int section = (Integer)pagingMap.get("section");
		int pageNum = (Integer)pagingMap.get("pageNum");
		try {
			conn=dataFactory.getConnection();
			String query="SELECT * FROM (select rownum as recnum, mostnum, mosttitle, mostcontents, category from kurly_mostqna order by mostnum) WHERE recnum BETWEEN (?-1)*100+(?-1)*10+1 AND (?-1)*100+?*10";
			//페이징 처리 section이 3 pagingNum이 4면 (3-1)*100 +(4-1)*10+1 해서 231번재글 즉 3섹션의 31번쨰글
			System.out.println(query);
			pstmt=conn.prepareStatement(query);
			pstmt.setInt(1, section);
			pstmt.setInt(2, pageNum);
			pstmt.setInt(3, section);
			pstmt.setInt(4, pageNum);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				int mostnum =rs.getInt("mostnum");
				String mosttitle=rs.getString("mosttitle");
				String mostcontents=rs.getString("mostcontents");
				String category=rs.getString("category");
				MostQnaVO mostQna=new MostQnaVO();
				mostQna.setMostnum(mostnum);
				mostQna.setCategory(category);
				mostQna.setMosttitle(mosttitle);
				mostQna.setMostcontents(mostcontents);
				
				mostQnaList.add(mostQna);
				System.out.println(mostQnaList);
			}
			rs.close();
			pstmt.close();
			conn.close();
		}catch (Exception e) {
			System.out.println("글목록 페이징 조회중 에러" + e.getMessage());
		}
		return mostQnaList;
	}
	//전체글 목록
	public List<MostQnaVO> selectAllMostQna(){
		List<MostQnaVO> mostQnaList = new ArrayList<MostQnaVO>();
		try {
			String query="SELECT * FROM (SELECT rownum, mostnum, mosttitle, mostcontents, category from kurly_mostqna) kurly_mostqna";
			System.out.println(query);
			conn=dataFactory.getConnection();
			//오라클 계층형 SQL문을 실행
			pstmt = conn.prepareStatement(query);
			ResultSet rs =pstmt.executeQuery();
			while(rs.next()) {
				int mostnum =rs.getInt("mostnum");
				String mosttitle=rs.getString("mosttitle");
				String mostcontents = rs.getString("mostcontents");
				String category = rs.getString("category");
				MostQnaVO most = new MostQnaVO();
				most.setCategory(category);
				most.setMostcontents(mostcontents);
				most.setMostnum(mostnum);
				most.setMosttitle(mosttitle);
				mostQnaList.add(most);
				}
			rs.close();
			pstmt.close();
			conn.close();
		}catch (Exception e) {
			System.out.println("글목록 조회중 에러");
			System.out.println(e.getMessage());
		}
		return mostQnaList;
		
	}
	 //글 추가
	public int insertNewArticle(MostQnaVO mostQna) {
		int mostnum=getNewMostNum();
		System.out.println(mostnum);
		try {
			conn=dataFactory.getConnection();
			String mosttitle=mostQna.getMosttitle();
			String mostcontents=mostQna.getMostcontents();
			String category=mostQna.getCategory();
			String query="insert into kurly_mostqna(mostnum,category,mosttitle,mostcontents) values (?,?,?,?)";
			System.out.println(query);
			pstmt =conn.prepareStatement(query);
			pstmt.setInt(1, mostnum);
			pstmt.setString(2,category);
			pstmt.setString(3, mosttitle);
			pstmt.setString(4, mostcontents);
			pstmt.execute();
			pstmt.close();
			conn.close();
		}catch (Exception e) {
			System.out.println("새 글 추가중 에러" +e.getMessage());
		}
			return mostnum;
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
			return 0;
		}



		public MostQnaVO selectMostQna(int mostnum) {
			MostQnaVO mostQna = new MostQnaVO();
			try {
				conn =dataFactory.getConnection();
				String query ="select mostnum, mosttitle, mostcontents, category from kurly_mostqna where mostnum=?";
				//NVL은 해당 값이 있으면 그 값을 전달하고 없으면 null을 전달해줌
				System.out.println(query);
				pstmt=conn.prepareStatement(query);
				pstmt.setInt(1, mostnum);
				ResultSet rs = pstmt.executeQuery();
				rs.next();
				int _mostnum = rs.getInt("mostnum");
				String mosttitle=rs.getString("mosttitle");
				String mostcontents = rs.getString("mostcontents");
				String categoty=rs.getString("category");
				
				//ArticleVo에 저장
				mostQna.setCategory(categoty);
				mostQna.setMostcontents(mostcontents);
				mostQna.setMosttitle(mosttitle);
				mostQna.setMostnum(_mostnum);
				
			} catch (Exception e) {
				System.out.println("글 상세 구현 중 에러" + e.getMessage());
			}
			return mostQna;
		}
		//회원정보 수정
		public void modMostQna(MostQnaVO mostQnaVO) {
			int mostnum = mostQnaVO.getMostnum();
			String mosttitle = mostQnaVO.getMosttitle();
			String category = mostQnaVO.getCategory();
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
				pstmt.executeUpdate();
				pstmt.close();
				conn.close();
			} catch (Exception e) {
				System.out.println("수정중 오류발생!!");
			}
		}

		public void delMember(int mostnum) {
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
		//전체 글 목록 수
		public int selectToMostQna() {
			try {
				conn=dataFactory.getConnection();
				String query="select count(mostnum) from kurly_mostqna";
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