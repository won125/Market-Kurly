package member;

import java.sql.Date;

public class MemberVO {
	private String id;
	private String pw;
	private String name;
	private String email;
	private String phone;
	private String address;
	private String detailAddress;
	private String gender;
	private String birthyear;
	private String birthmonth;
	private String birthday;
	
	//생성자 호출
	public MemberVO() {
		System.out.println("MemberVO 생성자 호출");
	}

	//생성자 초기화
	public MemberVO(String id, String pw, String name, String email) {
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.email = email;
	}
	//생성자 초기화
		public MemberVO(String id, String pw, String name, String email,
				String phone, String address, String detailAddress, String gender, String birthyear, String birthmonth, String birthday) {
			this.id = id;
			this.pw = pw;
			this.name = name;
			this.email = email;
			this.address = address;
			this.detailAddress = detailAddress;
			this.phone = phone;
			this.gender = gender;
			this.birthyear = birthyear;
			this.birthmonth = birthmonth;
			this.birthday = birthday;
		}
		//생성자 초기화
		public MemberVO(String id, String pw, String name, String email,
				String phone, String gender, String birthyear, String birthmonth, String birthday) {
			this.id = id;
			this.pw = pw;
			this.name = name;
			this.email = email;
			this.phone = phone;
			this.gender = gender;
			this.birthyear = birthyear;
			this.birthmonth = birthmonth;
			this.birthday = birthday;
		}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	

	public String getDetailAddress() {
		return detailAddress;
	}

	public void setDetailAddress(String detailAddress) {
		this.detailAddress = detailAddress;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getBirthyear() {
		return birthyear;
	}

	public void setBirthyear(String birthyear) {
		this.birthyear = birthyear;
	}

	public String getBirthmonth() {
		return birthmonth;
	}

	public void setBirthmonth(String birthmonth) {
		this.birthmonth = birthmonth;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	
	
	
	
	
}
