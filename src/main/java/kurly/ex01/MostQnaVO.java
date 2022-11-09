
package kurly.ex01;

public class MostQnaVO {
	private int mostnum;
	private String mosttitle;
	private String mostcontents;
	private String category;

	public MostQnaVO() {
		System.out.println("MostQnaVO 생성");
	}
	public MostQnaVO(int mostnum,String category, String mosttitle, String mostcontents) {
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
