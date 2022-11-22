package review;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class ReviewDAO {
	private DataSource dataFactory;
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;

	public ReviewDAO() {
		try {
			Context ctx = new InitialContext();
			Context envContext = (Context) ctx.lookup("java:/comp/env");
			dataFactory = (DataSource) envContext.lookup("jdbc/oracle");

		} catch (Exception e) {
			System.out.println("DB 연결실패");
		}
	}

	// 선택한 상세페이지에서 후기 들고오기
	public List<ReviewVO> selectAllReview(String gcode1) {
		List<ReviewVO> ReviewList = new ArrayList();
		try {
			conn = dataFactory.getConnection();
			String query = "select * from kurly_review where goodscode = ?";
			System.out.println(query);
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, gcode1);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				String id = rs.getString("id");
				String goodscode = rs.getString("goodscode");
				String reviewnum = rs.getString("reviewnum");
				String reviewimage = rs.getString("reviewimage");
				String reviewcontents = rs.getString("reviewcontents");
				Date reviewdate = rs.getDate("reviewdate");
				String goodsname = rs.getString("goodsname");

				ReviewVO reviewVO = new ReviewVO();

				reviewVO.setId(id);
				reviewVO.setGoodscode(goodscode);
				reviewVO.setReviewnum(reviewnum);
				reviewVO.setReviewimage(reviewimage);
				reviewVO.setReviewcontents(reviewcontents);
				reviewVO.setReviewdate(reviewdate);
				reviewVO.setGoodsname(goodsname);

				ReviewList.add(reviewVO);

			}
			rs.close();
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			System.out.println("상세페이지 후기 들고오던중 에러 발생");
		}
		return ReviewList;
	}
	//글 번호 생성 메서드
	private int getNewArticleNO() {
		try {
			conn=dataFactory.getConnection();
			//기본글 번호중 max함수를 이용해서 가장 큰번호를 조회
			String query="select max(reviewnum) from kurly_review";
			System.out.println(query);
			pstmt=conn.prepareStatement(query);
			ResultSet  rs= pstmt.executeQuery(query);
			//가장 큰 번호에 1을 더한 번호를 반환 
			if(rs.next()) {
				return(rs.getInt(1)+1);
			}
			rs.close();
			pstmt.close();
			conn.close();
		}catch(Exception e) {
			System.out.println("글번호 생성중 에러 발생");
		}
		return 0;
	}

	// 후기 작성하기
//	public void insertRview(Kurly_reviewVO reviewVO) {
//		try {
//			String id = reviewVO.getId();
//			String goodscode = reviewVO.getGoodscode();
//			String reviewnum = reviewVO.getReviewnum();
//			String reviewcontents = reviewVO.getReviewcontents();
//			String reviewimage = reviewVO.getReviewimage();
//			String goodsname = reviewVO.getGoodsname();
//			conn = dataFactory.getConnection();
//			String query = "insert into kurly_review(id,goodscode,reviewnum,reviewcontents,reviewimage,goodsname)  \r\n"
//					+ "values(?,?,review_seq.nextval,?,?,?)";
//			System.out.println(query);
//			pstmt = conn.prepareStatement(query);
//			pstmt.setString(1, id);
//			pstmt.setString(2, goodscode);
//			pstmt.setString(3, reviewcontents);
//			pstmt.setString(4, reviewimage);
//			pstmt.setString(5, goodsname);
//			pstmt.executeUpdate();
//			pstmt.close();
//			conn.close();
//
//		} catch (Exception e) {
//			System.out.println("후기 작성중 에러 발생");
//		}
//
//	}
	// 후기 작성하기
	public int insertRview(ReviewVO reviewVO) {
		int articleNo=getNewArticleNO();
		try {
			String id = reviewVO.getId();
			String goodscode = reviewVO.getGoodscode();
			String reviewnum = reviewVO.getReviewnum();
			String reviewcontents = reviewVO.getReviewcontents();
			String reviewimage = reviewVO.getReviewimage();
			String goodsname = reviewVO.getGoodsname();
			conn = dataFactory.getConnection();
			String query = "insert into kurly_review(id,goodscode,reviewnum,reviewcontents,reviewimage,goodsname)  \r\n"
					+ "values(?,?,review_seq.nextval,?,?,?)";
			System.out.println(query);
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id);
			pstmt.setString(2, goodscode);
			pstmt.setString(3, reviewcontents);
			pstmt.setString(4, reviewimage);
			pstmt.setString(5, goodsname);
			pstmt.executeUpdate();
			pstmt.close();
			conn.close();

		} catch (Exception e) {
			System.out.println("후기 작성중 에러 발생" +e.getMessage());
		}
		return articleNo;

	}

	// 후기글 삭제하기
	public void delReview(String reviewnum) {
		try {
			conn = dataFactory.getConnection();
			String query = "delete from kurly_review where reviewnum = ?";
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, reviewnum);
			pstmt.executeUpdate();
			pstmt.close();
			conn.close();
			System.out.println("후기글 삭제 완료");
		} catch (Exception e) {
			System.out.println("후기글 삭제중 오류발생");
		}
	}
	//작성한 후기글 들고오기
	public ReviewVO findreview(String _reviewnum) {
		ReviewVO findreview = null; 
		try {
			conn = dataFactory.getConnection();
			String query = "select id ,goodscode, reviewnum, reviewcontents, reviewimage , goodsname from kurly_review where reviewnum = ?";
			pstmt = conn.prepareStatement(query);
			System.out.println(query);
			pstmt.setString(1, _reviewnum);
			rs = pstmt.executeQuery();
			
			rs.next();
			String id = rs.getString("id");
			String goodscode =rs.getString("goodscode");
			String reviewnum = rs.getString("reviewnum");
			String reviewcontents = rs.getString("reviewcontents");
			String reviewimage = rs.getString("reviewimage");
			String goodsname = rs.getString("goodsname");
			
			findreview = new ReviewVO(id, goodscode, reviewnum, reviewcontents, reviewimage, goodsname);
			
			rs.close();
			pstmt.close();
			conn.close();
		} catch(Exception e) {
			System.out.println("후기글 들고오는중 오류발생");
		}
		return findreview;
	}
	//후기글 수정하기
	public void updatereview(ReviewVO reviewVO) {
		try {
			conn = dataFactory.getConnection();
			String reviewcontents = rs.getString("reviewcontents");
			String reviewimage = rs.getString("reviewimage");
			String reviewnum = rs.getString("reviewnum");
			String query="update kurly_review set reviewcontents=?, reviewimage=? where reviewnum= ?";
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, reviewcontents);
			pstmt.setString(2,reviewimage);
			pstmt.setString(3,reviewnum);
			pstmt.executeUpdate();
			pstmt.close();
			conn.close();
			
		}catch (Exception e) {
		System.out.println("후기글 수정중 오류발생");
		}
	}

}
