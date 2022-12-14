package member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import shipping.ShippingVO;

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
				String query = "select * from kurly_member";//회원 테이블 조회 쿼리문
				System.out.println("쿼리문 출력 : " + query);
				pstmt = conn.prepareStatement(query);
				ResultSet rs = pstmt.executeQuery();
				while (rs.next()) {
					if(!rs.getString("id").equals("admin")) {
					String id = rs.getString("id");
					String pw = rs.getString("pw");
					String name = rs.getString("name");
					String email = rs.getString("email");
					String address = rs.getString("address");
					String detailAddress = rs.getString("detailAddress");
					String phone = rs.getString("phone");
					String gender = rs.getString("gender");
					String birthyear = rs.getString("birthyear");
					String birthmonth = rs.getString("birthmonth");
					String birthday = rs.getString("birthday");
					MemberVO memberVO = new MemberVO(id, pw, name, email, phone, address, detailAddress, gender, birthyear, birthmonth, birthday);
					memberList.add(memberVO);
					}
				}
				rs.close();
				pstmt.close();
				conn.close();
			} catch (Exception e) {
				System.out.println("DB 처리 중 에러"+e.getMessage());
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
			String birthyear = memberVO.getBirthyear();
			String birthmonth = memberVO.getBirthmonth();
			String birthday = memberVO.getBirthday();
			String query = "insert into kurly_member(id,pw,name,email,address,detailAddress,phone,gender,birthyear,birthmonth,birthday) values(?,?,?,?,?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			pstmt.setString(3, name);
			pstmt.setString(4, email);
			pstmt.setString(5, address);
			pstmt.setString(6, detailAddress);
			pstmt.setString(7, phone);
			pstmt.setString(8, gender);
			pstmt.setString(9, birthyear);
			pstmt.setString(10, birthmonth);
			pstmt.setString(11, birthday);
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
				String birthyear = rs.getString("birthyear");
				String birthmonth = rs.getString("birthmonth");
				String birthday = rs.getString("birthday");
				memfindInfo = new MemberVO(id, pw, name, email, phone, address, detailAddress, gender, birthyear, birthmonth, birthday);
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
			String birthyear = memberVO.getBirthyear();
			String birthmonth = memberVO.getBirthmonth();
			String birthday = memberVO.getBirthday();
			String query = "update kurly_member set pw=?,email=?,phone=?,gender=?,birthyear=?,birthmonth=?,birthday=? where id=?";
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, pw);
			pstmt.setString(2, email);
			pstmt.setString(3, phone);
			pstmt.setString(4, gender);
			pstmt.setString(5, birthyear);
			pstmt.setString(6, birthmonth);
			pstmt.setString(7, birthday);
			pstmt.setString(8, id);
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
	
	//찜 목록 조회
	List wishlist(String _id) {
		List<WishListVO> wlist = new ArrayList();
		try {
			conn = dataFactory.getConnection();
			String query = "select * from kurly_wish where id=?";
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, _id);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				String id = rs.getString("id");
				String goodsname = rs.getString("goodsname");
				String goodscode = rs.getString("goodscode");
				int goodsprice = rs.getInt("goodsprice");
	            String goodsimage = rs.getString("goodsimage");
	            WishListVO wishlist = new WishListVO(id, goodscode, goodsname, goodsimage, goodsprice);
	            wishlist.setId(id);
	            wishlist.setGoodscode(goodscode);
	            wishlist.setGoodsname(goodsname);
	            wishlist.setGoodsimage(goodsimage);
	            wishlist.setGoodsprice(goodsprice);
	            wlist.add(wishlist);
			}
		} catch (Exception e) {
			System.out.println("찜목록 조회 에러!!" + e.getMessage());
		}
		return wlist;
	}
	
	public int findwishitem(String goodscode, String id) {
		try {
			
			conn = dataFactory.getConnection();
			String query = "select goodscode from kurly_wish where id=?";
			System.out.println(query);
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				do {
					System.out.println(rs.getString("goodscode"));
					if(rs.getString("goodscode").equals(goodscode)) {
						return 1;
					}
				} while (rs.next());
			}else {
				return 0;
			}
		} catch (Exception e) {
			System.out.println("찜목록 겁색 에러!!" + e.getMessage());
		}
		return -1;
	}
	
	public void addwishitem(WishListVO wishListVO) {
		try {
			conn = dataFactory.getConnection();
			String goodscode = wishListVO.getGoodscode();
			String id = wishListVO.getId();
			String goodsname = wishListVO.getGoodsname();
			String goodsimage = wishListVO.getGoodsimage();
			int goodsprice = wishListVO.getGoodsprice();
			String query = "insert into kurly_wish(id,goodscode,goodsimage,goodsname,goodsprice) values(?,?,?,?,?)";
			System.out.println(query);
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id);
			pstmt.setString(2, goodscode);
			pstmt.setString(3, goodsimage);
			pstmt.setString(4, goodsname);
			pstmt.setInt(5, goodsprice);
			pstmt.executeUpdate();
			pstmt.close();
			conn.close();
			
			
		} catch (Exception e) {
			System.out.println("찜목록 등록 에러!!" + e.getMessage());
		}
	}
	
	public void deletewishitem(String goodscode, String id) {
		try {
			conn = dataFactory.getConnection();
			String query = "delete from kurly_wish where id=? and goodscode=?";
			System.out.println(query);
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id);
			pstmt.setString(2, goodscode);
			pstmt.executeUpdate();
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			System.out.println("찜목록 삭제 에러!!" + e.getMessage());
		}
	}
	
	//배송지 목록 조회
    public List<ShippingVO> shippingList(String _id) {
       List<ShippingVO> shipList = new ArrayList();
       try {
          conn = dataFactory.getConnection();//조회할때마다 데이터베이스 연결
          String query = "select * from kurly_shipping where id=?";//회원 테이블 조회 쿼리문
          System.out.println("쿼리문 출력 : " + query);
          pstmt = conn.prepareStatement(query);
          pstmt.setString(1, _id);
          ResultSet rs = pstmt.executeQuery();
          while (rs.next()) {
             String id = rs.getString("id");
             String shippingname = rs.getString("shippingname");
             String shippingphone = rs.getString("shippingphone");
             String shippingaddress = rs.getString("shippingaddress");
             String shippingdetailaddress = rs.getString("shippingdetailaddress");
             int shippingindex = rs.getInt("shippingindex");
             ShippingVO shippingVO = new ShippingVO(id, shippingname, shippingphone, shippingaddress, shippingdetailaddress,shippingindex);
             shipList.add(shippingVO);
          }
          rs.close();
          pstmt.close();
          conn.close();
       } catch (Exception e) {
          System.out.println("DB 처리 중 에러");
       }
       return shipList;
    }
 
 //배송지 등록
 public void addshipping(ShippingVO shippingVO) {
    try {
       conn = dataFactory.getConnection();
       String id = shippingVO.getId();
       String shippingname = shippingVO.getShippingname();
       String shippingphone = shippingVO.getShippingphone();
       String shippingaddress = shippingVO.getShippingaddress();
       String shippingdetailaddress = shippingVO.getShippingdetailaddress();
       String query = "insert into kurly_shipping(id,shippingname,shippingphone,shippingaddress,shippingdetailaddress,shippingindex) values(?,?,?,?,?,SQ_shippingindex.NEXTVAL)";
       pstmt = conn.prepareStatement(query);
       pstmt.setString(1, id);
       pstmt.setString(2, shippingname);
       pstmt.setString(3, shippingphone);
       pstmt.setString(4, shippingaddress);
       pstmt.setString(5, shippingdetailaddress);
       pstmt.executeUpdate();
       pstmt.close();
       conn.close();
    } catch (Exception e) {
       System.out.println("배송지 추가 중 DB에러!!" + e.getMessage());
    }
 }
 
 //수정할 배송지 찾기
 public ShippingVO findShipping(int idx) {
       ShippingVO shippingInfo = null;
       try {
          conn = dataFactory.getConnection();
          String query = "select * from kurly_shipping where shippingindex=?";
          System.out.println(query);
          pstmt=conn.prepareStatement(query);
          pstmt.setInt(1, idx);
          System.out.println(idx);
          System.out.println(query);
          ResultSet rs = pstmt.executeQuery();
          if(rs.next()) {
             String id = rs.getString("id");
             String shippingname = rs.getString("shippingname");
             String shippingphone = rs.getString("shippingphone");
             String shippingaddress = rs.getString("shippingaddress");
             String shippingdetailaddress = rs.getString("shippingdetailaddress");
             int shippingindex = rs.getInt("shippingindex");
             System.out.println(id);
             shippingInfo = new ShippingVO(id, shippingname, shippingphone, shippingaddress, shippingdetailaddress,shippingindex);
          }
          
          rs.close();
          pstmt.close();
          conn.close();
       } catch (Exception e) {
          System.out.println("수정할 자료를 찾지 못했습니다." + e.getMessage());
       }
       return shippingInfo;
    }

 
 
 public void updateshipping(ShippingVO shippingVO) {
    try {
       conn = dataFactory.getConnection();
       String id = shippingVO.getId();
       String shippingname = shippingVO.getShippingname();
       String shippingphone = shippingVO.getShippingphone();
       String shippingdetailaddress = shippingVO.getShippingdetailaddress();
       int shippingindex = shippingVO.getShippingindex();
       String query = "update kurly_shipping set shippingname=?,shippingphone=?,shippingdetailaddress=? where id=? and shippingindex=?";
       System.out.println(query);
       pstmt = conn.prepareStatement(query);
       pstmt.setString(1, shippingname);
       pstmt.setString(2, shippingphone);
       pstmt.setString(3, shippingdetailaddress);
       pstmt.setString(4, id);
       pstmt.setInt(5, shippingindex);
       pstmt.executeUpdate();
       pstmt.close();
       conn.close();
    } catch (Exception e) {
       System.out.println("배송지 정보 수정 에러!!" + e.getMessage());
    }
 }
 
 public int deleteshipping(String id, int idx) {
    int result = 0;
    try {
       conn = dataFactory.getConnection();
       String query = "delete from kurly_shipping where id=? and shippingindex=?";
       pstmt = conn.prepareStatement(query);
       pstmt.setString(1, id);
       pstmt.setInt(2, idx);
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
