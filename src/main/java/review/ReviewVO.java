package review;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.sql.Date;

public class ReviewVO {
	
//	CREATE TABLE kurly_review(
//	 id varchar2(4000),
//	 goodscode varchar2(4000),
//	 goodsimage varchar2(4000),
//	 goodsselectname varchar2(4000),
//	 reviewtitle varchar2(4000),
//	 reviewcontents varchar2(4000),
//	 reviewimage varchar2(4000),
//	 reviewdate DATE,
//	 goodsname varchar2(4000)
//	);
	
	private String id; 				//아이디
	private String goodscode;       //코드
	private String reviewnum;       //리뷰번호
	private String reviewcontents;  //리뷰내용
	private String reviewimage;     //리뷰사진
	private Date reviewdate;        //리뷰작성일
	private String goodsname;       //상품이름
	
	public ReviewVO() {;}
	
	
	
	

	public ReviewVO(String id, String goodscode, String  reviewnum, String reviewcontents, String reviewimage,
			Date reviewdate, String goodsname) {
		super();
		this.id = id;
		this.goodscode = goodscode;
		this.reviewnum = reviewnum;
		this.reviewcontents = reviewcontents;
		this.reviewimage = reviewimage;
		this.reviewdate = reviewdate;
		this.goodsname = goodsname;
	}
	//수정하기
	public ReviewVO(String id, String goodscode, String reviewnum, String reviewcontents, String reviewimage,
			String goodsname) {
		super();
		this.id = id;
		this.goodscode = goodscode;
		this.reviewnum = reviewnum;
		this.reviewcontents = reviewcontents;
		this.reviewimage = reviewimage;
		this.goodsname = goodsname;
	}
	
	
	
	

	public ReviewVO(String  reviewnum, String reviewcontents, String reviewimage) {
		super();
		this.reviewnum = reviewnum;
		this.reviewcontents = reviewcontents;
		this.reviewimage = reviewimage;
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

	public String  getReviewnum() {
		return reviewnum;
	}

	public void setReviewnum(String  reviewnum) {
		this.reviewnum = reviewnum;
	}

	public String getReviewcontents() {
		return reviewcontents;
	}

	public void setReviewcontents(String reviewcontents) {
		this.reviewcontents = reviewcontents;
	}

	public String getReviewimage() {
	
		return reviewimage;
	}

	public void setReviewimage(String reviewimage) {
		
		try {
			if(reviewimage !=null && reviewimage.length() !=0) {
				this.reviewimage=URLEncoder.encode(reviewimage,"utf-8");
			}
		}catch (UnsupportedEncodingException e) {
			System.out.println("이미지를 저장중 에러");
		}
		this.reviewimage = reviewimage;
	}

	public Date getReviewdate() {
		return reviewdate;
	}

	public void setReviewdate(Date reviewdate) {
		this.reviewdate = reviewdate;
	}

	public String getGoodsname() {
		return goodsname;
	}

	public void setGoodsname(String goodsname) {
		this.goodsname = goodsname;
	}

	
	
	
	


}
