package cart;

public class CartVO {
	
	private String id;
	private String goodscode;
	private String goodsname;
	private String goodsinfo;
	private String goodsdelivery;
	private String goodsprice;
	private String goodsdiscount;
	private String goodspackage;
	private String goodsunit;
	private String goodsweight;
	private String goodsorigin;
	private String goodsimage;
	
	public CartVO(String id,String goodscode, String goodsname, String goodsinfo, String goodsdelivey, String goodsprice, 
			String goodspackage, String goodsunit, String goodsweight, String goodsorigin, String goodsimage) {
			this.id=id;
			this.goodscode=goodscode;
			this.goodsname=goodsname;
			this.goodsinfo=goodsinfo;
			this.goodsprice=goodsprice;
			this.goodspackage=goodspackage;
			this.goodsunit=goodsunit;
			this.goodsweight=goodsweight;
			this.goodsorigin=goodsorigin;
			this.goodsimage=goodsimage;
			this.goodsdelivery=goodsdelivey;
	}
	
	
	public CartVO() {
		System.out.println("cartVO생성");
	}
	
	public CartVO(String id) {
		this.id=id;
	}
	public CartVO(String id,String goodscode) {
		this.id=id;
		this.goodscode=goodscode;
	}
	
	public String getGoodsname() {
		return goodsname;
	}
	public void setGoodsname(String goodsname) {
		this.goodsname = goodsname;
	}
	
	public String getGoodsinfo() {
		return goodsinfo;
	}
	public void setGoodsinfo(String goodsinfo) {
		this.goodsinfo = goodsinfo;
	}
	public String getGoodsdelivery() {
		return goodsdelivery;
	}
	public void setGoodsdelivery(String goodsdelivery) {
		this.goodsdelivery = goodsdelivery;
	}
	public String getGoodsprice() {
		return goodsprice;
	}
	public void setGoodsprice(String goodsprice) {
		this.goodsprice = goodsprice;
	}
	public String getGoodsdiscount() {
		return goodsdiscount;
	}
	public void setGoodsdiscount(String goodsdiscount) {
		this.goodsdiscount = goodsdiscount;
	}
	public String getGoodspackage() {
		return goodspackage;
	}
	public void setGoodspackage(String goodspackage) {
		this.goodspackage = goodspackage;
	}
	public String getGoodsunit() {
		return goodsunit;
	}
	public void setGoodsunit(String goodsunit) {
		this.goodsunit = goodsunit;
	}
	public String getGoodsweight() {
		return goodsweight;
	}
	public void setGoodsweight(String goodsweight) {
		this.goodsweight = goodsweight;
	}
	public String getGoodsorigin() {
		return goodsorigin;
	}
	public void setGoodsorigin(String goodsorigin) {
		this.goodsorigin = goodsorigin;
	}
	public String getGoodsimage() {
		return goodsimage;
	}
	public void setGoodsimage(String goodsimage) {
		this.goodsimage = goodsimage;
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
	
	
	
}
