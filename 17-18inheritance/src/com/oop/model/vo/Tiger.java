package com.oop.model.vo;

public class Tiger extends Animal{
	public Tiger() {}

	public Tiger(String category, String name) {
		super(category, name);
	}

	public void bark() {
		System.out.println("ȣ���� ����!");
	}

	public void attack() {}
}
