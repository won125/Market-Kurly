package cart;

import java.sql.Connection;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;

import javax.sql.DataSource;

import kurly.ex01.MostQnaVO;


public class CartDAO {
	private DataSource dataFactory;
	private Connection conn;
	private PreparedStatement pstmt;
	
	public CartDAO() {
		try {
			Context ctx = new InitialContext();
			Context envContext =(Context)ctx.lookup("java:/comp/env");
			dataFactory = (DataSource)envContext.lookup("jdbc/oracle");
			
		}catch (Exception e){
			System.out.println("DB 연결 오류");
		}
	}	
	
	public void addCart(CartVO cartVO) {
		try {
			conn = dataFactory.getConnection();
			String id=cartVO.getId();
			System.out.println(id);
			String goodscode=cartVO.getGoodscode();
			String query = "insert into kurly_cart (id,goodscode) values(?,?)";
			System.out.println(query);
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id);
			pstmt.setString(2, goodscode);
			pstmt.executeUpdate();
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			System.out.println("회원가입 중 DB에러!!" + e.getMessage());
		}
	}
	
	
	public int productCheck(String id, String goodscode) {
		int value=-1;
		try {
			conn = dataFactory.getConnection();
		    String query = "select goodscode from kurly_cart where id = ?";
		    pstmt = conn.prepareStatement(query);
		    System.out.println(query);
		    pstmt.setString(1, id);
		    System.out.println(id);
		    ResultSet rs = pstmt.executeQuery();
		    if(!rs.next()) {
		    	value=1;
		    }else {
		    	if(rs.getString("goodscode").equals(goodscode)) {
		    		value=0;
		    	}else {
		    		value=1;
		    	}
		    }
		    rs.close();
		    pstmt.close();
		    conn.close();
		    }catch (Exception e) {
				// TODO: handle exception
			}
		return value;
	}

	public List listCart(CartVO cartVO) {
		List<CartVO> cartList = new ArrayList<CartVO>();
		try {
			conn = dataFactory.getConnection();
			String id = cartVO.getId();
			System.out.println(id);
			String query = "select c.id, c.goodscode,g.goodsname,g.goodsinfo,g.goodsprice,g.goodsdelivery,g.goodspackage,g.goodsunit,g.goodsweight,g.goodsorigin,g.goodsimage from kurly_cart c inner join kurly_goods g on c.goodscode=g.goodscode where c.id=?";
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
				CartVO cart = new CartVO(_id, goodscode, goodsname, goodsinfo, goodsdelivery, goodsprice, goodspackage, goodsunit, goodsweight, goodsorigin, goodsimage);
				cart.setGoodsinfo(goodsinfo);
				cart.setGoodscode(goodscode);;
				cart.setGoodsdelivery(goodsdelivery);
				cart.setGoodsimage(goodsimage);
				cart.setGoodsname(goodsname);
				cart.setGoodsorigin(goodsorigin);
				cart.setGoodspackage(goodspackage);
				cart.setGoodsprice(goodsprice);
				cart.setGoodsunit(goodsunit);
				cart.setGoodsweight(goodsweight);
				cart.setId(_id);
				cartList.add(cart);
				
			}
			rs.close();
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("조인중 에러" +e.getMessage());
		}
		return cartList;
	}
	
}
