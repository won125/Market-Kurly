package goods;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import member.WishListVO;

public class GoodsDAO {
	
	private DataSource dataFactory;
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;

	public GoodsDAO() {
		try {

			Context ctx = new InitialContext();
			Context envContext = (Context) ctx.lookup("java:/comp/env");
			dataFactory = (DataSource) envContext.lookup("jdbc/oracle");
			System.out.println("디비 연결 성공");

		} catch (Exception e) {
			System.out.println("DB 연결 오류");
		}
	}
	//물건 상세페이지
	public List<GoodsVO> goodsdetail(String gcode) {
		List<GoodsVO> gdetail = new ArrayList();
try {
			conn = dataFactory.getConnection();
			String query = "select * from kurly_goods where goodscode = ?";
			System.out.println(query);
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, gcode);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				String goodscode = rs.getString("goodscode");
				System.out.println("rsWhile->"+goodscode);
				String goodsimage = rs.getString("goodsimage");
				String goodsname = rs.getString("goodsname");
				String goodsinfo = rs.getString("goodsinfo");
				int goodsprice = rs.getInt("goodsprice");
				String goodsdiscount = rs.getString("goodsdiscount");
				String goodsdelivery = rs.getString("goodsdelivery");
				String goodspackage = rs.getString("goodspackage");
				String goodsunit = rs.getString("goodsunit");
				String goodsweight = rs.getString("goodsweight");
				String goodsorigin = rs.getString("goodsorigin");
				String goodsselect = rs.getString("goodsselect");
				String goodscontents1 = rs.getString("goodscontents1");
				String goodscontents2 = rs.getString("goodscontents2");
				String goodscontents3 = rs.getString("goodscontents3");
				String goodscontents4 = rs.getString("goodscontents4");
				
				int goodsstock = rs.getInt("goodsstock");

				GoodsVO goodsVO = new GoodsVO(goodscode, goodsimage, goodsname, goodsinfo, goodsprice, goodsdiscount,
						goodsdelivery, goodspackage, goodsunit, goodsweight, goodsorigin, goodsselect, goodscontents1,
						goodscontents2, goodscontents3, goodscontents4, goodsstock);
				
				gdetail.add(goodsVO);
				
				System.out.println(goodscode);
			}

			rs.close();
			pstmt.close();
			conn.close();

		} catch (SQLException e) {
			System.out.println("상품상세내역 불러오는중 에러");
			System.out.println(e.getMessage());
		}

		return gdetail;
	}
	//해당 이미지 찾기
	public GoodsVO findimg(String _goodscode) {
			GoodsVO findimg = null;
		try {
			conn = dataFactory.getConnection();
			String query = "select goodsimage from kurly_goods where goodscode= ?";
			System.out.println(query);
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, _goodscode);
			rs= pstmt.executeQuery();
			rs.next();
				String goodsimage = rs.getString("goodsimage");
				findimg = new GoodsVO(goodsimage);
				
			rs.close();
			pstmt.close();
			conn.close();
		}catch(Exception e) {
			System.out.println("연결중 에러 발생");
		}
		return findimg;
	}
	   public WishListVO findgoods(String id, String goodscode) {
		      WishListVO wishListVO = new WishListVO();
		      try {
		      conn = dataFactory.getConnection();
		      String query = "select * from kurly_goods where goodscode=?";
		      System.out.println(query);
		      pstmt = conn.prepareStatement(query);
		      pstmt.setString(1, goodscode);
		      rs = pstmt.executeQuery();
		      while(rs.next()) {
		         String goodsimage = rs.getString("goodsimage");
		           String goodsname = rs.getString("goodsname");
		           int goodsprice = rs.getInt("goodsprice");
		           wishListVO.setId(id);
		           wishListVO.setGoodscode(goodscode);
		           wishListVO.setGoodsname(goodsname);
		           wishListVO.setGoodsimage(goodsimage);
		           wishListVO.setGoodsprice(goodsprice);
		      }
		   } catch (Exception e) {
		      System.out.println("상품정보 불러오기 에러!" + e.getMessage());
		   }
		      return wishListVO;
		   }
	

}
