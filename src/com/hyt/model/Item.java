package com.hyt.model;

public class Item {
	private int id;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	private String name;
	private double price;
	private String imgPath;
	private String desc;
	private String bdesc;
	private String bimgPath;
	
public Item(int id,String name, double price, String imgPath, String desc,String bdesc,String bimgPath) {
		super();
		this.id=id;
		this.name = name;
		this.price = price;
		this.imgPath = imgPath;
		this.desc = desc;
		this.bdesc=bdesc;
		this.bimgPath=bimgPath;
	}
public String getBdesc() {
	return bdesc;
}
public void setBdesc(String bdesc) {
	this.bdesc = bdesc;
}
public String getBimgPath() {
	return bimgPath;
}
public void setBimgPath(String bimgPath) {
	this.bimgPath = bimgPath;
}
public Item() {
	
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public double getPrice() {
	return price;
}
public void setPrice(double price) {
	this.price = price;
}
public String getImgPath() {
	return imgPath;
}
public void setImgPath(String imgPath) {
	this.imgPath = imgPath;
}
public String getDesc() {
	return desc;
}
public void setDesc(String desc) {
	this.desc = desc;
}
@Override
public int hashCode() {
	final int prime = 31;
	int result = 1;
	result = prime * result + id;
	return result;
}
@Override
public boolean equals(Object obj) {
	if (this == obj)
		return true;
	if (obj == null)
		return false;
	if (getClass() != obj.getClass())
		return false;
	Item other = (Item) obj;
	if (id != other.id)
		return false;
	return true;
}

}
