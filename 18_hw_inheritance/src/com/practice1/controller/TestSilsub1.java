package com.practice1.controller;

import com.practice1.model.vo.Book;

public class TestSilsub1 {
	public static void main(String[] args) {
		Book b1 = new Book("������", "����1", 20000);
		Book b2 = (Book)b1.clone();
		
		if(b1.equals(b2))
			System.out.println("b1�� b2�� ����å �Դϴ�.");
		else
			System.out.println("b1�� b2�� �ٸ�å �Դϴ�.");
			
		if(b1 == b2)
			System.out.println("b1�� b2�� �ּҰ��� �����ϴ�.");
		else
			System.out.println("b1�� b2�� �ּҰ��� �ٸ��ϴ�.");
	}
}
