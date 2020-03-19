package com.hyt.model;


import java.util.HashMap;


import java.util.Iterator;
import java.util.Set;

public class Cart {
//购买商品的集合
	private HashMap<Item, Integer> goods;
//购物车的总金额
	private double totalPrice;
	private int totalNumber;
	
	public int getTotalNumber() {
		return totalNumber;
	}
	public void setTotalNumber(int totalNumber) {
		this.totalNumber = totalNumber;
	}
	public Cart() {
		goods=new HashMap<Item, Integer>();
		totalPrice=0.0;
	}
	public HashMap<Item, Integer> getGoods() {
		return goods;
	}
	public void setGoods(HashMap<Item, Integer> goods) {
		this.goods = goods;
	}
	public double getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}
	
	//添加商品进购物车的方法
	public boolean addGoodsInCart(Item item,int number) {
		if(goods.containsKey(item)) {
			goods.put(item, goods.get(item)+number);
		}
		else {
			goods.put(item, number);
		}
		calTotalPrice();  //重新计算购物车的总金额
		calTotalNumber();
		return true;
	}
	//删除商品的方法
	public boolean removeGoodsFromCart(Item item) {
		goods.remove(item);
		calTotalPrice();
		calTotalNumber();
		return true;
	}
	
	//统计购物车的总金额
	public double calTotalPrice() {
		double sum=0.0;
		Set<Item>keys=goods.keySet();//获得键的集合
		Iterator<Item> it=keys.iterator();//获得迭代器对象
		while(it.hasNext()) {
			Item i=it.next();
			sum+=i.getPrice()*goods.get(i);
		}
		this.setTotalPrice(sum); //设置购物车的总金额
		return this.getTotalPrice();
	}
	//统计总数量
	public int  calTotalNumber() {
		int sum=0;
		Set<Item>keys=goods.keySet();
		Iterator<Item>it=keys.iterator();
		while(it.hasNext()) {
			Item i=it.next();
			sum+=goods.get(i);
		}
		this.setTotalNumber(sum);
		return this.getTotalNumber();
	}
	
}
