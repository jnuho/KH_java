package com.oop.contoller;

import com.oop.model.vo.Book;
import com.oop.model.vo.Point;

public class TestSilsub1 {
	public static void main(String[] args) {
		Book b1 = new Book("�ڹ�å", "abc", 20000);
		Book b2 = new Book("1�ڹ�", "������abc", 50000);
		
		System.out.println(b1);
		System.out.println(b2);
		
		if(b1.equals(b2))
			System.out.println("���� å�Դϴ�.");
		else
			System.out.println("�ٸ� å�Դϴ�.");

		b2 =  (Book)b1.clone();
		if(b1.equals(b2)) 
			System.out.println("�����ϴ�.");
		else
			System.out.println("�ٸ��ϴ�.");
		//deep copy
		System.out.println(b1 + " : " + b1.hashCode());
		System.out.println(b2 + " : " + b2.hashCode());

		Point p1 = new Point(1,2);
		Point p2 = new Point(3,4);

		System.out.println(p1);
		System.out.println(p2);

//		if(p1.equals(p2))
//			System.out.println("�� ����Ʈ�� ��ġ�մϴ�.");
//		else
//			System.out.println("�� ����Ʈ�� ��ġ���� �ʽ��ϴ�.");
//
//		=> ù��° ��ü�� ������ ��ü ������ : clone() ���
//		=> ù��° ��ü�� ���� ��ü�� �ּҰ� ������ ���
//		=> ù��° ��ü�� ���� ��ü�� ������ ������ ���

	}
}
