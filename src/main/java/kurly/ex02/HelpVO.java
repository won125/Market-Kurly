package kurly.ex02;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.Date;

public class HelpVO {
	private int helpnum;
	private String admin;
	private String helptitle;
	private String helpcontents;
	private Date helpwritedate;
	private String imageFileName;
	
	
	public HelpVO() {
		System.out.println("HelpVO 생성");
	}
	public HelpVO(int helpnum,String admin, String helptitle, String helpcontents, String imageFileName) {
		this.helpnum=helpnum;
		this.admin=admin;
		this.helptitle=helptitle;
		this.helpcontents=helpcontents;
		this.imageFileName=imageFileName;
	}
	
	public int getHelpnum() {
		return helpnum;
	}
	public void setHelpnum(int helpnum) {
		this.helpnum = helpnum;
	}
	public String getAdmin() {
		return admin;
	}
	public void setAdmin(String admin) {
		this.admin = admin;
	}
	public String getHelptitle() {
		return helptitle;
	}
	public void setHelptitle(String helptitle) {
		this.helptitle = helptitle;
	}
	public String getHelpcontents() {
		return helpcontents;
	}
	public void setHelpcontents(String helpcontents) {
		this.helpcontents = helpcontents;
	}
	public Date getHelpwritedate() {
		return helpwritedate;
	}
	public void setHelpwritedate(Date helpwritedate) {
		this.helpwritedate = helpwritedate;
	}
	public String getImageFileName() {
		try {
			if(imageFileName !=null && imageFileName.length() !=0) {
				imageFileName=URLDecoder.decode(imageFileName,"utf-8");//특수문자나 한글이 들어간 이름은 꺠져보이므로 그걸 적용하기 위해서 사용!
			}
		} catch (UnsupportedEncodingException e) {
			System.out.println("이미지를 로딩중 에러");
		}
		return imageFileName;
	}
	public void setImageFileName(String imageFileName) {
		try {
			if(imageFileName !=null && imageFileName.length() !=0) {
				this.imageFileName=URLEncoder.encode(imageFileName,"utf-8");
			}
		}catch (UnsupportedEncodingException e) {
			System.out.println("이미지를 저장중 에러");
		}
		this.imageFileName = imageFileName;
	}
}
