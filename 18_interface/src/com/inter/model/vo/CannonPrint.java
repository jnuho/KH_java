package com.inter.model.vo;

public class CannonPrint implements Print{

	public void connonPrint() {
		System.out.println("cannon�μ�!");
	}
	
	@Override
	public void print() {
		connonPrint();
	}

	@Override
	public void scan() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void copy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void colorPrint() {
		// TODO Auto-generated method stub
		
	}
	
}
