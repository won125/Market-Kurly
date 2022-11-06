package marketkurly.member;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import memberMVC.ex01.MemberVO;

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
			String phone = memberVO.getPhone();
			String gender = memberVO.getGender();
			String birth = memberVO.getBirth();
			String query = "insert into kurly_member(id,pw,name,email,address,phone,gender,birth) values(?,?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			pstmt.setString(3, name);
			pstmt.setString(4, email);
			pstmt.setString(5, address);
			pstmt.setString(6, phone);
			pstmt.setString(7, gender);
			pstmt.setString(8, birth);
			pstmt.executeUpdate();
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			System.out.println("회원가입 중 DB에러!!" + e.getMessage());
		}
	}
	
	public int idCheck(String id) {
		int value = 0;	
		try {
		    conn = dataFactory.getConnection();
		    String query = "select id from kurly_member where id = ?";
		    pstmt = conn.prepareStatement(query);
		    pstmt.setString(1, id);
		    ResultSet rs = pstmt.executeQuery();
		    if(rs.next()) value = 1;
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
				String query = "select * from membertbl where id=?";
				pstmt=conn.prepareStatement(query);
				pstmt.setString(1, _id);
				System.out.println(query);
				ResultSet rs = pstmt.executeQuery();
				rs.next();
				String id = rs.getString("id");
				String pwd = rs.getString("pwd");
				String name = rs.getString("name");
				String email = rs.getString("email");
				Date joinDate = rs.getDate("joinDate");
				memfindInfo = new MemberVO(id, pwd, name, email, joinDate);
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
			String query = "select *from";
			
		} catch (Exception e) {
			System.out.println("회원 정보 수정 에러!!" + e.getMessage());
		}
		return ;
	}

	
}
