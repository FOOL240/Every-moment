package cn.edu.nuc.shop.entiry;

import java.util.Date;



public class Product {
    private Integer pid;//商品编号

    private String Pname;//商品名称

    private int Pprice;//商品价格

    private String Ppicture;//商品图片

    private String Pdescribe;//商品描述
  
    private int OrderNum;//商品数量
    public String getPpicture() {
		return Ppicture;
	}

	public void setPpicture(String ppicture) {
		Ppicture = ppicture;
	}


	public Integer getPid() {
		return pid;
	}

	public void setPid(Integer pid) {
		this.pid = pid;
	}

	public String getPname() {
		return Pname;
	}

	public void setPname(String pname) {
		Pname = pname;
	}

	public int getPprice() {
		return Pprice;
	}

	public void setPprice(int pprice) {
		Pprice = pprice;
	}

	public String getPdescribe() {
		return Pdescribe;
	}

	public void setPdescribe(String pdescribe) {
		Pdescribe = pdescribe;
	}

	public int getOrderNum() {
		return OrderNum;
	}

	public void setOrderNum(int orderNum) {
		OrderNum = orderNum;
	}
    

	

	
    
    
}