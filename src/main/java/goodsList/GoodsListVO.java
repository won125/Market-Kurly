package goodsList;

public class GoodsListVO {
//	   "GOODSSELECTNAME" VARCHAR2(4000), --타입
//	   "GOODSIMAGE" VARCHAR2(4000), --이미지
//	    "GOODSPRICE" NUMBER(10),  --가격
//		"GOODSRATE" VARCHAR2(4000), --할인율
//		"GOODSCODE" VARCHAR2(4000), --코드
//		"GOODSINFO" VARCHAR2(4000), --정보
//		"GOODSTITLE" VARCHAR2(4000) --제목
	private String goodsselectname;
	private String goodsimage;
	private int goodsprice;
	private int goodsrate;
	private String goodscode;
	private String goodsinfo;
	private String goodstitle;
	
	
public GoodsListVO() {}





public String getGoodsselectname() {
	return goodsselectname;
}


public GoodsListVO(String goodsselectname, String goodsimage, int goodsprice, int goodsrate, String goodscode,
		String goodsinfo, String goodstitle) {
	super();
	this.goodsselectname = goodsselectname;
	this.goodsimage = goodsimage;
	this.goodsprice = goodsprice;
	this.goodsrate = goodsrate;
	this.goodscode = goodscode;
	this.goodsinfo = goodsinfo;
	this.goodstitle = goodstitle;
}

public void setGoodsselectname(String goodsselectname) {
	this.goodsselectname = goodsselectname;
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


public int getGoodsrate() {
	return goodsrate;
}


public void setGoodsrate(int goodsrate) {
	this.goodsrate = goodsrate;
}


public String getGoodscode() {
	return goodscode;
}


public void setGoodscode(String goodscode) {
	this.goodscode = goodscode;
}


public String getGoodsinfo() {
	return goodsinfo;
}


public void setGoodsinfo(String goodsinfo) {
	this.goodsinfo = goodsinfo;
}


public String getGoodstitle() {
	return goodstitle;
}


public void setGoodstitle(String goodstitle) {
	this.goodstitle = goodstitle;
}


	
	

}
