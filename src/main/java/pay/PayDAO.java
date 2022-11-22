package pay;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import cart.CartVO;

public class PayDAO {
	private DataSource dataFactory;
	private Connection conn;
	private PreparedStatement pstmt;

	public PayDAO() {
		try {
			Context ctx = new InitialContext();
			Context envContext =(Context)ctx.lookup("java:/comp/env");
			dataFactory = (DataSource)envContext.lookup("jdbc/oracle");

		}catch (Exception e){
			System.out.println("DB 연결 오류");
		}
	}
	
	public void updateCart(PayVO payVO) {
		String goodscount=payVO.getGoodscount(); 
		String goodscode=payVO.getGoodscode();
		String id = payVO.getId();
		try {
			conn=dataFactory.getConnection();
			String query="update kurly_cart set goodscount=? where id=? and goodscode=?";
			System.out.println(query);
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, goodscount);
			pstmt.setString(2, id);
			pstmt.setString(3, goodscode);
			pstmt.executeUpdate();
			
			
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			System.out.println("수정중 오류발생!!"+e.getMessage());
		}
	}
	
	public void delOrder(String id) {
		try {
			conn=dataFactory.getConnection();
			String query="delete from kurly_order where id=?";
			System.out.println(query);
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id);
			System.out.println(id);
			pstmt.executeUpdate();
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			System.out.println("삭제중 오류발생!!");
		}
	}
	
	
	
	public List listPay(PayVO payVO) {
		List<PayVO> payList = new ArrayList<PayVO>();
		String id = payVO.getId();
		String totalprice = payVO.getTotalprice();
		try {
			conn = dataFactory.getConnection();
			String query1="insert into kurly_order (id,totalprice) values (?,?)";
			System.out.println(query1);
			pstmt = conn.prepareStatement(query1);
			pstmt.setString(1, id);
			pstmt.setString(2, totalprice);
			pstmt.executeUpdate();
			String query = "select c.id, c.goodscode,c.goodscount,g.goodsname,g.goodsinfo,g.goodsprice,"
					+ "g.goodsdelivery,g.goodspackage,g.goodsunit,g.goodsweight,g.goodsorigin,g.goodsimage,m.name,m.email,"
					+ "m.phone,m.address,m.detailaddress,s.shippingname,s.shippingphone,s.shippingaddress,s.shippingdefaultaddress,"
					+ "o.totalprice from kurly_cart c inner join kurly_goods g on c.goodscode=g.goodscode"
					+ " inner join kurly_member m on c.id=m.id inner join kurly_shipping s on m.id=s.id inner join kurly_order o on"
					+ " s.id=o.id where c.id=?";
			System.out.println(query);	
			pstmt = conn.prepareStatement(query);
		
			pstmt.setString(1, id);
			ResultSet rs =pstmt.executeQuery();
			while(rs.next()) {
				String _id = rs.getString("id");
				String goodscode =rs.getString("goodscode");
				String goodsname=rs.getString("goodsname");
				String goodsinfo=rs.getString("goodsinfo");
				String goodsprice=rs.getString("goodsprice");
				String goodsdelivery=rs.getString("goodsdelivery");
				String goodsunit=rs.getString("goodsunit");
				String goodsweight = rs.getString("goodsweight");
				String goodsorigin = rs.getString("goodsorigin");
				String goodsimage=rs.getString("goodsimage");
				String goodspackage =rs.getString("goodspackage");
				String goodscount=rs.getString("goodscount");
				String name=rs.getString("name");
				String email=rs.getString("email");
				String phone=rs.getString("phone");
				String address=rs.getString("address");
				String detailaddress=rs.getString("detailaddress");
				String shippingname=rs.getString("shippingname");
				String shippingphone=rs.getString("shippingphone");
				String shippingaddress=rs.getString("shippingaddress");
				String shippingdefaultaddress=rs.getString("shippingdefaultaddress");
				String _totalprice=rs.getString("totalprice");
				PayVO pay = new PayVO(_id, goodscode, goodsname, goodsinfo, goodsdelivery,
						goodsprice, goodspackage, goodsunit, goodsweight, goodsorigin,
						goodsimage, goodscount, shippingname, shippingphone, shippingaddress,
						shippingdefaultaddress, shippingname, email, shippingphone, shippingdefaultaddress, detailaddress,_totalprice);
				pay.setTotalprice(_totalprice);
				pay.setGoodsinfo(goodsinfo);
				pay.setGoodscode(goodscode);;
				pay.setGoodsdelivery(goodsdelivery);
				pay.setGoodsimage(goodsimage);
				pay.setGoodsname(goodsname);
				pay.setGoodsorigin(goodsorigin);
				pay.setGoodspackage(goodspackage);
				pay.setGoodsprice(goodsprice);
				pay.setGoodsunit(goodsunit);
				pay.setGoodsweight(goodsweight);
				pay.setId(_id);
				pay.setGoodscount(goodscount);
				pay.setName(name);
				pay.setEmail(email);
				pay.setPhone(phone);
				pay.setAddress(address);
				pay.setDetailaddress(detailaddress);
				pay.setShippingname(shippingname);
				pay.setShippingphone(shippingphone);
				pay.setShippingaddress(shippingaddress);
				pay.setShippingdefaultaddress(shippingdefaultaddress);
				payList.add(pay);
				
			}
			rs.close();
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("조인중 에러" +e.getMessage());
		}
		return payList;
	}
	
}
