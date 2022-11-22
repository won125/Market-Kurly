package goods;

public class GoodsVO {

//  "GOODSCODE" VARCHAR2(4000 BYTE), --1.상품 코드
//  "GOODSIMGAGE" VARCHAR2(4000 BYTE), --2.메인이미지
//  "GOODSNAME" VARCHAR2(4000 BYTE),  --3.상품이름
//  "GOODSINFO" VARCHAR2(4000 BYTE),  --4.상품 문구
//  "GOODSPRICE" number(10),       --5.상품가격
//  "GOODSDISCOUNT" VARCHAR2(4000 BYTE), --6.상품 할인율 
//  "GOODSDELIVERY" VARCHAR2(4000 BYTE), --7.배송타입
//  "GOODSPACKAGE" VARCHAR2(4000 BYTE), --8.포장타입
//  "GOODSUNIT" VARCHAR2(4000 BYTE), --9.판매단위
//  "GOODSWEIGHT" VARCHAR2(4000 BYTE), --10.중량/용량
//  "GOODSorigin" VARCHAR2(4000 BYTE), --11.원산지
//  "GOODSSELECT" VARCHAR2(4000 BYTE), --12.상품찾는이름      
// "GOODSCONTENTS1" VARCHAR2(4000 BYTE), --13.컨텐츠내용1
//  "GOODSCONTENTS2" VARCHAR2(4000 BYTE), --14.컨텐츠내용2
//   "GOODSCONTENTS3" VARCHAR2(4000 BYTE),-- 15.컨텐츠내용 3
//  "GOODSCONTENTS4" VARCHAR2(4000 BYTE),-- 16.컨텐츠내용 4
//  "GOODSCONTENTS5" VARCHAR2(4000 BYTE),-- 16.컨텐츠내용 5
//  "GOODSSTOCK" NUMBER(10,0) DEFAULT 200 --17.재고
  private String goodscode;
  private String goodsimage;
  private String goodsname;
  private String goodsinfo;
  private int goodsprice;
  private String goodsdiscount;
  private String goodsdelivery;
  private String goodspackage;
  private String goodsunit;
  private String goodsweight;
  private String goodsorigin;
  private String goodsselect;
  private String goodscontents1;
  private String goodscontents2;
  private String goodscontents3;
  private String goodscontents4;
  
  private int goodsstock;

  public GoodsVO() {
     super();
  };

  public GoodsVO(String goodscode, String goodsimage, String goodsname, String goodsinfo, int goodsprice,
        String goodsdiscount, String goodsdelivery, String goodspackage, String goodsunit, String goodsweight,
        String goodsorigin, String goodsselect, String goodscontents1, String goodscontents2, String goodscontents3,
        String goodscontents4, int goodsstock) {
     super();
     this.goodscode = goodscode;
     this.goodsimage = goodsimage;
     this.goodsname = goodsname;
     this.goodsinfo = goodsinfo;
     this.goodsprice = goodsprice;
     this.goodsdiscount = goodsdiscount;
     this.goodsdelivery = goodsdelivery;
     this.goodspackage = goodspackage;
     this.goodsunit = goodsunit;
     this.goodsweight = goodsweight;
     this.goodsorigin = goodsorigin;
     this.goodsselect = goodsselect;
     this.goodscontents1 = goodscontents1;
     this.goodscontents2 = goodscontents2;
     this.goodscontents3 = goodscontents3;
     this.goodscontents4 = goodscontents4;
     
     this.goodsstock = goodsstock;
  }

public GoodsVO(String goodsimage) {
	// TODO Auto-generated constructor stub
}

public String getGoodscode() {
	return goodscode;
}

public void setGoodscode(String goodscode) {
	this.goodscode = goodscode;
}

public String getGoodsimage() {
	return goodsimage;
}

public void setGoodsimage(String goodsimage) {
	this.goodsimage = goodsimage;
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

public int getGoodsprice() {
	return goodsprice;
}

public void setGoodsprice(int goodsprice) {
	this.goodsprice = goodsprice;
}

public String getGoodsdiscount() {
	return goodsdiscount;
}

public void setGoodsdiscount(String goodsdiscount) {
	this.goodsdiscount = goodsdiscount;
}

public String getGoodsdelivery() {
	return goodsdelivery;
}

public void setGoodsdelivery(String goodsdelivery) {
	this.goodsdelivery = goodsdelivery;
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

public String getGoodsselect() {
	return goodsselect;
}

public void setGoodsselect(String goodsselect) {
	this.goodsselect = goodsselect;
}

public String getGoodscontents1() {
	return goodscontents1;
}

public void setGoodscontents1(String goodscontents1) {
	this.goodscontents1 = goodscontents1;
}

public String getGoodscontents2() {
	return goodscontents2;
}

public void setGoodscontents2(String goodscontents2) {
	this.goodscontents2 = goodscontents2;
}

public String getGoodscontents3() {
	return goodscontents3;
}

public void setGoodscontents3(String goodscontents3) {
	this.goodscontents3 = goodscontents3;
}

public String getGoodscontents4() {
	return goodscontents4;
}

public void setGoodscontents4(String goodscontents4) {
	this.goodscontents4 = goodscontents4;
}

public int getGoodsstock() {
	return goodsstock;
}

public void setGoodsstock(int goodsstock) {
	this.goodsstock = goodsstock;
}
  
  


}
