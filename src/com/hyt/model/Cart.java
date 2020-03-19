package com.hyt.model;


import java.util.HashMap;


import java.util.Iterator;
import java.util.Set;

public class Cart {
//������Ʒ�ļ���
	private HashMap<Item, Integer> goods;
//���ﳵ���ܽ��
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
	
	//�����Ʒ�����ﳵ�ķ���
	public boolean addGoodsInCart(Item item,int number) {
		if(goods.containsKey(item)) {
			goods.put(item, goods.get(item)+number);
		}
		else {
			goods.put(item, number);
		}
		calTotalPrice();  //���¼��㹺�ﳵ���ܽ��
		calTotalNumber();
		return true;
	}
	//ɾ����Ʒ�ķ���
	public boolean removeGoodsFromCart(Item item) {
		goods.remove(item);
		calTotalPrice();
		calTotalNumber();
		return true;
	}
	
	//ͳ�ƹ��ﳵ���ܽ��
	public double calTotalPrice() {
		double sum=0.0;
		Set<Item>keys=goods.keySet();//��ü��ļ���
		Iterator<Item> it=keys.iterator();//��õ���������
		while(it.hasNext()) {
			Item i=it.next();
			sum+=i.getPrice()*goods.get(i);
		}
		this.setTotalPrice(sum); //���ù��ﳵ���ܽ��
		return this.getTotalPrice();
	}
	//ͳ��������
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
