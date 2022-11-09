
package kurly.ex01;

public class MostQnaVO {
	private int mostnum;
	private String mosttitle;
	private String mostcontents;
	private String category;
	private int nowpage;
	
	public int getNowpage() {
		return nowpage;
	}

	public void setNowpage(int nowpage) {
		this.nowpage = nowpage;
	}

	public MostQnaVO() {
		// TODO Auto-generated constructor stub
	}

	public MostQnaVO(int mostnum,String category, String mosttitle, String mostcontents) {
		this.mostnum=mostnum;
		this.category=category;
		this.mosttitle=mosttitle;
		this.mostcontents=mostcontents;
	}
	public MostQnaVO(int nowpage, int mostnum,String category, String mosttitle, String mostcontents) {
		this.nowpage=nowpage;
		this.mostnum=mostnum;
		this.category=category;
		this.mosttitle=mosttitle;
		this.mostcontents=mostcontents;
	}
	
	public MostQnaVO(String category, String mosttitle, String mostcontents) {
		
		this.category=category;
		this.mosttitle=mosttitle;
		this.mostcontents=mostcontents;
	}
	

	public int getMostnum() {
		return mostnum;
	}
	public void setMostnum(int mostnum) {
		this.mostnum = mostnum;
	}

	public String getMosttitle() {
		return mosttitle;
	}
	public void setMosttitle(String mosttitle) {
		this.mosttitle = mosttitle;
	}
	public String getMostcontents() {
		return mostcontents;
	}
	public void setMostcontents(String mostcontents) {
		this.mostcontents = mostcontents;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	
	
}
