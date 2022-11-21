package pay;

public class PayVO {
	
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
	private String goodscount;
	private String shippingname;
	private String shippingphone;
	private String shippingaddress;
	private String shippingdefaultaddress;
	private String name;
	private String email;
	private String phone;
	private String address;
	private String detailaddress;
	private String totalprice;
	
	
	public PayVO(String id,String goodscode, String goodsname, String goodsinfo, String goodsdelivey, String goodsprice, 
			String goodspackage, String goodsunit, String goodsweight, String goodsorigin, String goodsimage, String goodscount
			,String shippingname, String shippingphone, String shippingaddress, String shippingdefaultaddress, String name, String email, String phone,
			String address, String detailaddress,String totalprice) {
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
			this.goodscount=goodscount;
			this.shippingname=shippingname;
			this.shippingphone=shippingphone;
			this.shippingaddress=shippingaddress;
			this.shippingdefaultaddress=shippingdefaultaddress;
			this.name=name;
			this.email=email;
			this.phone=phone;
			this.address=address;
			this.detailaddress=detailaddress;
			this.totalprice=totalprice;
	}


	public String getTotalprice() {
		return totalprice;
	}
	public void setTotalprice(String totalprice) {
		this.totalprice = totalprice;
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




	public String getDetailaddress() {
		return detailaddress;
	}




	public void setDetailaddress(String detailaddress) {
		this.detailaddress = detailaddress;
	}




	public PayVO(String id,String goodscode, String goodsname, String goodsinfo, String goodsdelivey, String goodsprice, 
			String goodspackage, String goodsunit, String goodsweight, String goodsorigin, String goodsimage, String goodscount) {
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
			this.goodscount=goodscount;
	}
	

	
	
	public String getGoodscount() {
		return goodscount;
	}


	public void setGoodscount(String goodscount) {
		this.goodscount = goodscount;
	}


	public PayVO() {
		System.out.println("PayVO생성");
	}
	
	public PayVO(String id) {
		this.id=id;
	}
	public PayVO(String id, String totalprice) {
		this.id=id;
		this.totalprice=totalprice;
	}
	public PayVO(String id,String goodscode,String goodscount) {
		this.id=id;
		this.goodscode=goodscode;
		this.goodscount=goodscount;
	}
	public PayVO(String id,String goodscode,String goodscount, String totalprice) {
		this.id=id;
		this.goodscode=goodscode;
		this.goodscount=goodscount;
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


	public String getShippingdefaultaddress() {
		return shippingdefaultaddress;
	}


	public void setShippingdefaultaddress(String shippingdefaultaddress) {
		this.shippingdefaultaddress = shippingdefaultaddress;
	}
	
	
}
