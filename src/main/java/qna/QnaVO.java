package qna;

import java.sql.Date;

public class QnaVO {

	
	private String id;
	private String name;
	private String goodscode;
	private String qnatitle;
	private String qnacontents;
	private String qnaanswer;
	private Date qnadate;
	private String qnalock;
	private String qnanum;

	
	public QnaVO() {
		System.out.println("qnaVO실행중");
	}
	
	//게시글 목록확인
	public QnaVO(String name, String qnatitle, String qnaanswer, Date qnadate) {
		super();
		this.name = name;
		this.qnatitle = qnatitle;
		this.qnaanswer = qnaanswer;
		this.qnadate = qnadate;
	}
	
	// 선택한 상세페이지 가져오기
	
	public QnaVO(String id, String name, String goodscode, String qnatitle, String qnacontents,
			String qnaanswer, Date qnadate, String qnalock, String qnanum) {
		super();
		this.id = id;
		this.name = name;	
		this.goodscode = goodscode;
		this.qnatitle = qnatitle;
		this.qnacontents = qnacontents;
		this.qnaanswer = qnaanswer;
		this.qnadate = qnadate;
		this.qnalock = qnalock;
		this.qnanum = qnanum;
	}
	// 작성한 게시글 넣기,수정
	
	public QnaVO(String id, String name, String goodscode, String qnatitle, String qnacontents, String qnanum) {
		
		this.id = id;
		this.name = name;
		this.goodscode = goodscode;
		this.qnatitle = qnatitle;
		this.qnacontents = qnacontents;
		this.qnanum= qnanum;
	}
	
	

	

	public String getQnanum() {
		return qnanum;
	}

	public void setQnanum(String qnanum) {
		this.qnanum = qnanum;
	}

	public String getQnalock() {
		return qnalock;
	}


	public void setQnalock(String qnalock) {
		this.qnalock = qnalock;
	}

	public String getGoodscode() {
		return goodscode;
	}

	public void setGoodscode(String goodscode) {
		this.goodscode = goodscode;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getQnatitle() {
		return qnatitle;
	}

	public void setQnatitle(String qnatitle) {
		this.qnatitle = qnatitle;
	}

	public String getQnacontents() {
		return qnacontents;
	}

	public void setQnacontents(String qnacontents) {
		this.qnacontents = qnacontents;
	}

	public String getQnaanswer() {
		return qnaanswer;
	}

	public void setQnaanswer(String qnaanswer) {
		this.qnaanswer = qnaanswer;
	}

	public Date getQnadate() {
		return qnadate;
	}

	public void setQnadate(Date qnadate) {
		this.qnadate = qnadate;
	}	

}
