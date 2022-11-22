package marketkurly.member;

public class ShippingVO {
	private String id;
	private String shippingname;
	private String shippingphone;
	private String shippingaddress;
	private String shippingdetailaddress;
	private int shippingindex;
	
	//생성자 초기화
	public ShippingVO(String id, String shippingname, String shippingphone, String shippingaddress, String shippingdetailaddress,int shippingindex) {
		this.id = id;
		this.shippingname = shippingname;
		this.shippingphone = shippingphone;
		this.shippingaddress = shippingaddress;
		this.shippingdetailaddress = shippingdetailaddress;
		this.shippingindex = shippingindex;
	}
	//생성자 초기화
		public ShippingVO(String id, String shippingname, String shippingphone, String shippingaddress, String shippingdetailaddress) {
			this.id = id;
			this.shippingname = shippingname;
			this.shippingphone = shippingphone;
			this.shippingaddress = shippingaddress;
			this.shippingdetailaddress = shippingdetailaddress;
		}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getShippingname() {
		return shippingname;
	}
	public void setShippingname(String shippingname) {
		this.shippingname = shippingname;
	}
	public String getShippingphone() {
		return shippingphone;
	}
	public void setShippingphone(String shippingphone) {
		this.shippingphone = shippingphone;
	}
	public String getShippingaddress() {
		return shippingaddress;
	}
	public void setShippingaddress(String shippingaddress) {
		this.shippingaddress = shippingaddress;
	}
	public String getShippingdetailaddress() {
		return shippingdetailaddress;
	}
	public void setShippingdetailaddress(String shippingdetailaddress) {
		this.shippingdetailaddress = shippingdetailaddress;
	}

	public int getShippingindex() {
		return shippingindex;
	}

	public void setShippingindex(int shippingindex) {
		this.shippingindex = shippingindex;
	}
	
	
}
