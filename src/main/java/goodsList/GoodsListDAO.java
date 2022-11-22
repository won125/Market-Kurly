package goodsList;

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
		List<GoodsListVO> glist = new ArrayList();
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
				int goodsrate = rs.getInt("goodsrate");
				String goodscode = rs.getString("goodscode");
				String goodsinfo = rs.getString("goodsinfo");
				String goodstitle = rs.getString("goodstitle");
				GoodsListVO goodslistVO = new GoodsListVO(goodsselectname, goodsimage, goodsprice, goodsrate, goodscode, goodsinfo, goodstitle);
				goodslistVO.setGoodscode(goodscode);
				goodslistVO.setGoodsimage(goodsimage);
				goodslistVO.setGoodsprice(goodsprice);
				goodslistVO.setGoodsrate(goodsrate);
				goodslistVO.setGoodscode(goodscode);
				goodslistVO.setGoodsinfo(goodsinfo);
				goodslistVO.setGoodstitle(goodstitle);
				
				
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
	//상품 품목별검색
	public List<GoodsListVO> findlist(String keyword){
	List<GoodsListVO> flist = new ArrayList();
	try {
		conn = dataFactory.getConnection();
		
		String query="select * from kurly_goodslist where goodsselectname like '%' || ? || '%'";
		System.out.println(query);
		pstmt = conn.prepareStatement(query);
		pstmt.setString(1,keyword);
		rs = pstmt.executeQuery();
		while (rs.next()) {
			String goodsselectname = rs.getString("goodsselectname");
			String goodsimage = rs.getString("goodsimage");
			int goodsprice = rs.getInt("goodsprice");
			int goodsrate = rs.getInt("goodsrate");
			String goodscode = rs.getString("goodscode");
			String goodsinfo = rs.getString("goodsinfo");
			String goodstitle = rs.getString("goodstitle");
			GoodsListVO goodslistVO = new GoodsListVO(goodsselectname, goodsimage, goodsprice, goodsrate, goodscode, goodsinfo, goodstitle);
			goodslistVO.setGoodscode(goodscode);
			goodslistVO.setGoodsimage(goodsimage);
			goodslistVO.setGoodsprice(goodsprice);
			goodslistVO.setGoodsrate(goodsrate);
			goodslistVO.setGoodscode(goodscode);
			goodslistVO.setGoodsinfo(goodsinfo);
			goodslistVO.setGoodstitle(goodstitle);
			flist.add(goodslistVO);

	}
		rs.close();
		pstmt.close();
		conn.close();
	
	}catch(Exception e) {
		System.out.println("상품검색중 에러발생");
		
	}
	return flist;
	}
	
	//상품 품목별 단어 검색
	public List<GoodsListVO> findword(String keyword){
	List<GoodsListVO> flist = new ArrayList();
	try {
		conn = dataFactory.getConnection();
		
		String query="select * from kurly_goodslist where goodstitle like '%' || ? || '%'";
		System.out.println(query);
		pstmt = conn.prepareStatement(query);
		pstmt.setString(1,keyword);
		rs = pstmt.executeQuery();
		while (rs.next()) {
			String goodsselectname = rs.getString("goodsselectname");
			String goodsimage = rs.getString("goodsimage");
			int goodsprice = rs.getInt("goodsprice");
			int goodsrate = rs.getInt("goodsrate");
			String goodscode = rs.getString("goodscode");
			String goodsinfo = rs.getString("goodsinfo");
			String goodstitle = rs.getString("goodstitle");
			GoodsListVO goodslistVO = new GoodsListVO(goodsselectname, goodsimage, goodsprice, goodsrate, goodscode, goodsinfo, goodstitle);
			goodslistVO.setGoodscode(goodscode);
			goodslistVO.setGoodsimage(goodsimage);
			goodslistVO.setGoodsprice(goodsprice);
			goodslistVO.setGoodsrate(goodsrate);
			goodslistVO.setGoodscode(goodscode);
			goodslistVO.setGoodsinfo(goodsinfo);
			goodslistVO.setGoodstitle(goodstitle);
			flist.add(goodslistVO);

	}
		rs.close();
		pstmt.close();
		conn.close();
	
	}catch(Exception e) {
		System.out.println("상품검색중 에러발생");
		
	}
	return flist;
	}
	
	//상품 높은가격순 정렬
	public List<GoodsListVO> findhigh(){
		List<GoodsListVO> flist = new ArrayList();
		try {
			conn = dataFactory.getConnection();
			
			String query="select * from kurly_goodslist order by goodsprice desc";
			System.out.println(query);
			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				String goodsselectname = rs.getString("goodsselectname");
				String goodsimage = rs.getString("goodsimage");
				int goodsprice = rs.getInt("goodsprice");
				int goodsrate = rs.getInt("goodsrate");
				String goodscode = rs.getString("goodscode");
				String goodsinfo = rs.getString("goodsinfo");
				String goodstitle = rs.getString("goodstitle");
				GoodsListVO goodslistVO = new GoodsListVO(goodsselectname, goodsimage, goodsprice, goodsrate, goodscode, goodsinfo, goodstitle);
				goodslistVO.setGoodscode(goodscode);
				goodslistVO.setGoodsimage(goodsimage);
				goodslistVO.setGoodsprice(goodsprice);
				goodslistVO.setGoodsrate(goodsrate);
				goodslistVO.setGoodscode(goodscode);
				goodslistVO.setGoodsinfo(goodsinfo);
				goodslistVO.setGoodstitle(goodstitle);
				flist.add(goodslistVO);

		}
			rs.close();
			pstmt.close();
			conn.close();
		
		}catch(Exception e) {
			System.out.println("상품검색중 에러발생");
			
		}
		return flist;
		}
	
	//상품 높은가격순 정렬
		public List<GoodsListVO> findlow(){
			List<GoodsListVO> flist = new ArrayList();
			try {
				conn = dataFactory.getConnection();
				
				String query="select * from kurly_goodslist order by goodsprice asc";
				System.out.println(query);
				pstmt = conn.prepareStatement(query);
				rs = pstmt.executeQuery();
				while (rs.next()) {
					String goodsselectname = rs.getString("goodsselectname");
					String goodsimage = rs.getString("goodsimage");
					int goodsprice = rs.getInt("goodsprice");
					int goodsrate = rs.getInt("goodsrate");
					String goodscode = rs.getString("goodscode");
					String goodsinfo = rs.getString("goodsinfo");
					String goodstitle = rs.getString("goodstitle");
					GoodsListVO goodslistVO = new GoodsListVO(goodsselectname, goodsimage, goodsprice, goodsrate, goodscode, goodsinfo, goodstitle);
					goodslistVO.setGoodscode(goodscode);
					goodslistVO.setGoodsimage(goodsimage);
					goodslistVO.setGoodsprice(goodsprice);
					goodslistVO.setGoodsrate(goodsrate);
					goodslistVO.setGoodscode(goodscode);
					goodslistVO.setGoodsinfo(goodsinfo);
					goodslistVO.setGoodstitle(goodstitle);
					flist.add(goodslistVO);

			}
				rs.close();
				pstmt.close();
				conn.close();
			
			}catch(Exception e) {
				System.out.println("상품검색중 에러발생");
				
			}
			return flist;
			}
		
	//해당 상품가격체크
		public List<GoodsListVO> findprice(int price){
			List<GoodsListVO> flist = new ArrayList();
			try {
				conn = dataFactory.getConnection();
				
				String query="select * from kurly_goodslist where goodsprice < ? order by goodsprice desc";
				System.out.println(query);
				pstmt = conn.prepareStatement(query);
				pstmt.setInt(1, price);
				rs = pstmt.executeQuery();
				while (rs.next()) {
					String goodsselectname = rs.getString("goodsselectname");
					String goodsimage = rs.getString("goodsimage");
					int goodsprice = rs.getInt("goodsprice");
					int goodsrate = rs.getInt("goodsrate");
					String goodscode = rs.getString("goodscode");
					String goodsinfo = rs.getString("goodsinfo");
					String goodstitle = rs.getString("goodstitle");
					GoodsListVO goodslistVO = new GoodsListVO(goodsselectname, goodsimage, goodsprice, goodsrate, goodscode, goodsinfo, goodstitle);
					goodslistVO.setGoodscode(goodscode);
					goodslistVO.setGoodsimage(goodsimage);
					goodslistVO.setGoodsprice(goodsprice);
					goodslistVO.setGoodsrate(goodsrate);
					goodslistVO.setGoodscode(goodscode);
					goodslistVO.setGoodsinfo(goodsinfo);
					goodslistVO.setGoodstitle(goodstitle);
					flist.add(goodslistVO);

			}
				rs.close();
				pstmt.close();
				conn.close();
			
			}catch(Exception e) {
				System.out.println("상품검색중 에러발생");
				
			}
			return flist;
			}
	
	
	
	

}
