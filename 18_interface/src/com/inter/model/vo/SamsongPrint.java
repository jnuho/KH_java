package com.inter.model.vo;

public class SamsongPrint implements Print{

	private String model;
	private String name;
	
	public SamsongPrint() {
		// TODO Auto-generated constructor stub
	}

	public SamsongPrint(String model, String name) {
		super();
		this.model = model;
		this.name = name;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
//	@Override
//	public void printInfo() {
//		
//	}
//	@Override
//	public String printDriver() {
//		return "";
//	}
	
	public void printSam() {
		System.out.println("�Ｚ�μ�!");
	}
	
	@Override
	public void print() {
		printSam();
	}

	@Override
	public void scan() {
		System.out.println("�Ｚ��ĵ�ϱ�");
		
	}

	@Override
	public void copy() {
		System.out.println("�Ｚ�����ϱ�");
		
	}

	@Override
	public void colorPrint() {
		// TODO Auto-generated method stub
		
	}
	
	
	
	
	
}
