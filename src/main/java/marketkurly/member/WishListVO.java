package marketkurly.member;

public class WishListVO {
	private String id;
	private String goodscode;
	private String goodsname;
	private String goodsimage;
	private int goodsprice;
	
	public WishListVO(String id, String goodscode, String goodsname, String goodsimage, int goodsprice) {
		this.id = id;
		this.goodscode = goodscode;
		this.goodsname = goodsname;
		this.goodsimage = goodsimage;
		this.goodsprice = goodsprice;
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getGoodscode() {
		return goodscode;
	}
	public void setGoodscode(String goodscode) {
		this.goodscode = goodscode;
	}
	public String getGoodsname() {
		return goodsname;
	}
	public void setGoodsname(String goodsname) {
		this.goodsname = goodsname;
	}
	public String getGoodsimage() {
		return goodsimage;
	}
	public void setGoodsimage(String goodsimage) {
		this.goodsimage = goodsimage;
	}
	public int getGoodsprice() {
		return goodsprice;
	}
	public void setGoodsprice(int goodsprice) {
		this.goodsprice = goodsprice;
	}
	
	
	
}
