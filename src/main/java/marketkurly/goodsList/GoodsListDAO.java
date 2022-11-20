package marketkurly.goodsList;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class GoodsListDAO {
	private DataSource dataFactory;
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public GoodsListDAO() {
		 try {

	         Context ctx = new InitialContext();
	         Context envContext = (Context) ctx.lookup("java:/comp/env");
	         dataFactory = (DataSource) envContext.lookup("jdbc/oracle");
	         System.out.println("디비 연결 성공");

	      } catch (Exception e) {
	         System.out.println("DB 연결 오류");
	      }

	}

	//물품리스트
	   public List<GoodsListVO> goodslist(){
	      List<GoodsListVO> glist = new ArrayList<GoodsListVO>();
	      try {
	         conn = dataFactory.getConnection();
	         String query="select * from kurly_goodslist";
	         System.out.println(query);
	         pstmt=conn.prepareStatement(query);
	         rs= pstmt.executeQuery();
	         while(rs.next()) {
	            String goodsselectname = rs.getString("goodsselectname");
	            String goodsimage = rs.getString("goodsimage");
	            int goodsprice = rs.getInt("goodsprice");
	            String goodsrate = rs.getString("goodsrate");
	            String goodscode = rs.getString("goodscode");
	            String goodsinfo = rs.getString("goodsinfo");
	            String goodsname = rs.getString("goodsname");
	            GoodsListVO goodslistVO = new GoodsListVO(goodsselectname, goodsimage, goodsprice, goodsrate, goodscode, goodsinfo, goodsname);
	            goodslistVO.setGoodscode(goodscode);
	            goodslistVO.setGoodsimage(goodsimage);
	            goodslistVO.setGoodsprice(goodsprice);
	            goodslistVO.setGoodsrate(goodsrate);
	            goodslistVO.setGoodscode(goodscode);
	            goodslistVO.setGoodsinfo(goodsinfo);
	            goodslistVO.setGoodsname(goodsname);
	            glist.add(goodslistVO);
	         }
	         rs.close();
	         pstmt.close();
	         conn.close();
	      } catch (SQLException e) {
	         System.out.println("리스트 들고오는중 에러");
	         System.out.println(e.getMessage());
	      
	      }
	      return glist;
	   }


}
