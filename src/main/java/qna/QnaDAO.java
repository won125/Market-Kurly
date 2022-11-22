package qna;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.spi.DirStateFactory.Result;
import javax.sql.DataSource;

public class QnaDAO {
	private DataSource dataFactory;
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;

	public QnaDAO() {
		try {
			Context ctx = new InitialContext();
			Context envContext = (Context) ctx.lookup("java:/comp/env");
			dataFactory = (DataSource) envContext.lookup("jdbc/oracle");

		} catch (Exception e) {
			System.out.println("DB 연결실패");
		}
	}

	// 선택한 상품 상세페이지의 게시글을 가져오기
	public List<QnaVO> selectAllQna(String gcode1) {
		List<QnaVO> QnaList = new ArrayList();
		try {
			conn = dataFactory.getConnection();
			String query = "select * from kurly_qna where goodscode = ?";
			System.out.println(query);
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, gcode1);
			System.out.println(gcode1);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				String id = rs.getString("id");
				String name = rs.getString("name");
				String goodscode = rs.getString("goodscode");
				System.out.println("rsWhile->" + goodscode);
				String qnatitle = rs.getString("qnatitle");
				String qnalock = rs.getString("qnalock");
				String qnacontents = rs.getString("qnacontents");
				Date qnadate = rs.getDate("qnadate");
				String qnaanswer = rs.getString("qnaanswer");
				String qnanum = rs.getString("qnanum");
				
				QnaVO qnaVO = new QnaVO();
				
				qnaVO.setId(id);
				qnaVO.setName(name);
				qnaVO.setGoodscode(goodscode);
				qnaVO.setQnatitle(qnatitle);
				qnaVO.setQnalock(qnalock);
				qnaVO.setQnacontents(qnacontents);
				qnaVO.setQnadate(qnadate);
				qnaVO.setQnaanswer(qnaanswer);
				qnaVO.setQnanum(qnanum);
				
				QnaList.add(qnaVO);

				System.out.println(goodscode);
			}
			rs.close();
			pstmt.close();
			conn.close();

		} catch (Exception e) {
			System.out.println("글목록 들고오는중 에러 발생");
		}

		return QnaList;
	}
	
	//선택한 상품 상세페이지의 페이징 처리하기
	//public List<Kurly_qnaVO> AllQna
	//해당 상세페이지의 작성된 글 전체 목록수 가져오기
	public int getTotal(QnaVO qnaVO) {
		try {
			String goodscode = qnaVO.getGoodscode();
			conn=dataFactory.getConnection();
			String query="select count(reviewnum) from kurly_review where goodscode=? ";
			System.out.println(query);
			pstmt.setString(1, goodscode);
			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return(rs.getInt(1));
			}
			rs.close();
			pstmt.close();
			conn.close();
		} catch(Exception e) {
			System.out.println("글목록 불러오던중 에러 발생");
		}
		return 0;
	}
	//선택한 상품페이징 처리하기 
//	public List<Kurly_qnaVO> getList(int startRow, int endRow, String goodscode){
//		Map<String, Integer> pageMap = new HashMap<String, Integer>();
//		pageMap.put("startRow", startRow);
//		pageMap.put("endRow", endRow);
//		try {
//
//		conn = dataFactory.getConnection();
//		String qeury ="select * from \r\n"
//				+ "(\r\n"
//				+ "select rownum R, B.*from\r\n"
//				+ "    (select * from kurly_review where goodscode = ? order by rownum desc) B\r\n"
//				+ "    where  rownum <= ? \r\n"
//				+ ")\r\n"
//				+ " where R  >= ?";
//		pstmt.setInt(1, startRow);
//		pstmt.setString(2, goodscode);
//		pstmt.setInt(3, endRow);
//		rs = pstmt.executeQuery();
//		while(rs.next()) {
//		
//		}
//		rs.close();
//		pstmt.close();
//		conn.close();
//			
//		}catch(Exception e) {
//			System.out.println("글목록 페이징 조회중 에러" + e.getMessage());
//		}
//		return;
//		
//	}
	
	
	
	

	//1:1문의 작성하기
	public void insertQna(QnaVO qnaVO) {
		try {
		conn = dataFactory.getConnection();
		String id = qnaVO.getId();
		String name = qnaVO.getName();
		String goodscode = qnaVO.getGoodscode();
		String qnatitle = qnaVO.getQnatitle();
		String qnacontents = qnaVO.getQnacontents();
		//String qnanum = qnaVO.getQnanum();
		String query = "INSERT INTO kurly_qna (id, name, goodscode, qnatitle, qnacontents,qnanum)"
				+ " VALUES (?,?,?,?,?,qna_seq.nextval)";
		System.out.println(query);
		pstmt = conn.prepareStatement(query);
		pstmt.setString(1, id);
		pstmt.setString(2, name);
		pstmt.setString(3, goodscode);
		pstmt.setString(4, qnatitle);
		pstmt.setString(5, qnacontents);
		//pstmt.setString(6, qnanum);
		pstmt.executeUpdate();
		pstmt.close();
		conn.close();
		}catch(Exception e) {
		System.out.println("등록중 에러발생");
		System.out.println(e.getMessage());	
		}
	}
	
	//1:1문의 작성한 게시글 삭제하기
	public void delQna(String qnanum) {
		
		try {
		conn = dataFactory.getConnection();
		String query = "delete from kurly_qna where qnanum = ?";
		pstmt = conn.prepareStatement(query);
		pstmt.setString(1, qnanum);
		pstmt.executeUpdate();
		pstmt.close();
		conn.close();
		System.out.println("삭제완료했습니다.");
			
		}catch (Exception e) {
			System.out.println("1:1문의 게시글 삭제중 오류 발생");
		}
	
	}
	//1:1 문의 수정할 게시글 들고오기
	public QnaVO findqna(String _qnanum) {
		QnaVO findqna=null;
		try {
			conn = dataFactory.getConnection();
			String query ="select qnanum, id, name, goodscode, qnatitle, qnacontents from kurly_qna where qnanum=?";
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, _qnanum);
			rs= pstmt.executeQuery();
			rs.next();
			String qnanum= rs.getString("qnanum");
			String id = rs.getString("id");
			String name = rs.getString("name");
			String goodscode = rs.getString("goodscode");
			String qnatitle = rs.getString("qnatitle");
			String qnacontents = rs.getString("qnacontents");
			
			findqna = new QnaVO(id, name, goodscode, qnatitle, qnacontents, qnanum);
			
			rs.close();
			pstmt.close();
			conn.close();
			 
		}catch(Exception e){
			System.out.println("문의 수정중 연결중에러 발생");
		}
		return findqna;
	}
	
	
	
	
	//1:1 문의 작성한 게시글 수정하기
	public void updateQna(QnaVO qnaVO) {
		try {
			conn = dataFactory.getConnection();
			String id = qnaVO.getId();
			String name = qnaVO.getName();
			String goodscode = qnaVO.getGoodscode();
			String qnatitle = qnaVO.getQnatitle();
			String qnacontents = qnaVO.getQnacontents();
			String qnanum = qnaVO.getQnanum();
			String query="update kurly_qna set qnatitle=?, qnacontents=? where qnanum= ?";
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, qnatitle);
			pstmt.setString(2,qnacontents);
			pstmt.setString(3,qnanum);
			pstmt.executeUpdate();
			pstmt.close();
			conn.close();
		}catch(Exception e) {
			System.out.println("게시글 수정중에러 발생");
		}
		
	}
	
	
}
