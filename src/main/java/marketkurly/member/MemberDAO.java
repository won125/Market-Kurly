package marketkurly.member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MemberDAO {
	private DataSource dataFactory;
	private Connection conn;
	private PreparedStatement pstmt;
	private static MemberDAO dao;
	
	public MemberDAO() {
		try {
			Context ctx = new InitialContext();
			Context envContext = (Context)ctx.lookup("java:/comp/env");
			dataFactory = (DataSource)envContext.lookup("jdbc/oracle");
		} catch (Exception e) {
			System.out.println("DB연결 에러!!!");
		}
	}
	
	public static synchronized MemberDAO getInstance() {
		if (dao == null) {
			dao = new MemberDAO();
		}
		return dao;
	}
	
	//회원 목록 조회
		public List<MemberVO> memberList() {
			List<MemberVO> memberList = new ArrayList();
			try {
				conn = dataFactory.getConnection();//조회할때마다 데이터베이스 연결
				String query = "select * from membertbl order by joinDate desc";//회원 테이블 조회 쿼리문
				System.out.println("쿼리문 출력 : " + query);
				pstmt = conn.prepareStatement(query);
				ResultSet rs = pstmt.executeQuery();
				while (rs.next()) {
					String id = rs.getString("id");
					String pw = rs.getString("pw");
					String name = rs.getString("name");
					String email = rs.getString("email");
					String address = rs.getString("email");
					String detailAddress = rs.getString("email");
					String phone = rs.getString("email");
					String gender = rs.getString("email");
					String birth = rs.getString("email");
					MemberVO memberVO = new MemberVO(id, pw, name, email, phone, address, detailAddress, gender, birth);
					memberList.add(memberVO);
				}
				rs.close();
				pstmt.close();
				conn.close();
			} catch (Exception e) {
				System.out.println("DB 처리 중 에러");
			}
			return memberList;
		}
	
	//회원 등록
	public void addMember(MemberVO memberVO) {
		try {
			conn = dataFactory.getConnection();
			String id = memberVO.getId();
			String pw = memberVO.getPw();
			String name = memberVO.getName();
			String email = memberVO.getEmail();
			String address = memberVO.getAddress();
			String detailAddress = memberVO.getDetailAddress();
			String phone = memberVO.getPhone();
			String gender = memberVO.getGender();
			String birth = memberVO.getBirth();
			String query = "insert into kurly_member(id,pw,name,email,address,detailAddress,phone,gender,birth) values(?,?,?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			pstmt.setString(3, name);
			pstmt.setString(4, email);
			pstmt.setString(5, address);
			pstmt.setString(6, detailAddress);
			pstmt.setString(7, phone);
			pstmt.setString(8, gender);
			pstmt.setString(9, birth);
			pstmt.executeUpdate();
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			System.out.println("회원가입 중 DB에러!!" + e.getMessage());
		}
	}
	
	public boolean idCheck(String id) {
		boolean result = false;	
		try {
		    conn = dataFactory.getConnection();
		    String query = "select id from kurly_member where id = ?";
		    pstmt = conn.prepareStatement(query);
		    pstmt.setString(1, id);
		    ResultSet rs = pstmt.executeQuery();
		    if(rs.next()) result = true;
		    rs.close();
		    pstmt.close();
		    conn.close();
		}catch (Exception e) {
		    e.printStackTrace();
		}
		return result;
	    }

	public int login(String id, String pw) {
		try {
			conn = dataFactory.getConnection();
			String query = "select pw from kurly_member where id = ?";
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString("pw").equals(pw)) {
					return 1;// 로그인 성공
				}else {
					return 0; // 비밀번호가 일치하지않음
				}
			}
			return -1;// 아이디가 없음
		} catch (Exception e) {
			System.out.println("로그인 기능 에러!!" + e.getMessage());
		}
		return -2;// 데이터베이스 오류
	}
	
	//수정할 회원 정보 찾기
		public MemberVO findMember(String _id) {
			MemberVO memfindInfo = null;
			try {
				conn = dataFactory.getConnection();
				String query = "select * from kurly_member where id=?";
				pstmt=conn.prepareStatement(query);
				pstmt.setString(1, _id);
				System.out.println(query);
				ResultSet rs = pstmt.executeQuery();
				rs.next();
				String id = rs.getString("id");
				String pw = rs.getString("pw");
				String name = rs.getString("name");
				String email = rs.getString("email");
				String phone = rs.getString("phone");
				String address = rs.getString("address");
				String detailAddress = rs.getString("detailAddress");
				String gender = rs.getString("gender");
				String birth = rs.getString("birth");
				memfindInfo = new MemberVO(id, pw, name, email, phone, address, detailAddress, gender, birth);
				rs.close();
				pstmt.close();
				conn.close();
			} catch (Exception e) {
				System.out.println("수정할 자료를 찾지 못했습니다.");
			}
			return memfindInfo;
		}
	
	
	public void updateMember(MemberVO memberVO) {
		try {
			conn = dataFactory.getConnection();
			String id = memberVO.getId();
			String pw = memberVO.getPw();
			String email = memberVO.getEmail();
			String phone = memberVO.getPhone();
			String gender = memberVO.getGender();
			String birth = memberVO.getBirth();
			String query = "update kurly_member set pw=?,email=?,phone=?,gender=?,birth=? where id=?";
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, pw);
			pstmt.setString(2, email);
			pstmt.setString(3, phone);
			pstmt.setString(4, gender);
			pstmt.setString(5, birth);
			pstmt.setString(6, id);
			pstmt.executeUpdate();
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			System.out.println("회원 정보 수정 에러!!" + e.getMessage());
		}
		return ;
	}
	
	public int deleteMember(String id) {
		int result = 0;
		try {
			conn = dataFactory.getConnection();
			String query = "delete from kurly_member where id=?";
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id);
			pstmt.executeUpdate();
			pstmt.close();
			conn.close();
			result=1;
			
		} catch (Exception e) {
			System.out.println("삭제 실패!!"+e.getMessage());
		}
		return result;
	}

	
}
