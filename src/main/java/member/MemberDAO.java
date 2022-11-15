package member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

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
	
	public int idCheck(String id) {
		int value = -1;	
		try {
		    conn = dataFactory.getConnection();
		    String query = "select id from kurly_member where id = ?";
		    pstmt = conn.prepareStatement(query);
		    pstmt.setString(1, id);
		    ResultSet rs = pstmt.executeQuery();
		    if(rs.next()) {
		    	value = 0;
		    }else {
		    	value = 1;
		    }
		    rs.close();
		    pstmt.close();
		    conn.close();
		}catch (Exception e) {
		    e.printStackTrace();
		}
		return value;
	    }

	public int login(String id, String pw) {
		try {
			conn = dataFactory.getConnection();
			String query = "select pw from kurly_member where id = ?";
			System.out.println(query);
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
				String pwd = rs.getString("pwd");
				String name = rs.getString("name");
				String email = rs.getString("email");
				String phone = rs.getString("phone");
				String address = rs.getString("address");
				String detailAddress = rs.getString("detailAddress");
				String gender = rs.getString("gender");
				String birth = rs.getString("birth");
				memfindInfo = new MemberVO(id, pwd, name, email, phone, address, detailAddress, gender, birth);
				rs.close();
				pstmt.close();
				conn.close();
			} catch (Exception e) {
				System.out.println("수정할 자료를 찾지 못했습니다.");
			}
			return memfindInfo;
		}
	
	
	public void modMember(String id) {
		MemberVO memberVO = null;
		try {
			conn = dataFactory.getConnection();
			String query = "update kurly_member set pw=?, address=?";
			
		} catch (Exception e) {
			System.out.println("회원 정보 수정 에러!!" + e.getMessage());
		}
		return ;
	}

	
}
