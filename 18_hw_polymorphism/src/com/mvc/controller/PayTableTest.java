package com.mvc.controller;

import com.mvc.model.PayTable;
import com.mvc.model.Salary;

public class PayTableTest {
	public static void main(String[] args) {
		Salary[] pt = new Salary[4];
		pt[0] = new PayTable("�Ҽ���", 750000, 2, 3);
		pt[1] = new PayTable("���ָ�", 800000, 1, 4);
		pt[2] = new PayTable("���ȸ�", 650000, 6, 2);
		pt[3] = new PayTable("�ٹٹ�", 990000, 9, 3);
		
		System.out.println("\t\t\t\t**** �޿����� ****");
		System.out.println("---------------------------------------------"
				+ "------------------------------------------------------");
		System.out.println("�̸�\t�⺻��\t������\t��������\t�ð��ܱٹ�\t�ð��ܼ���\t����\t�μ�Ƽ��(%)\t������\t�Ǽ��ɾ�");
		System.out.println("---------------------------------------------"
				+ "------------------------------------------------------");
		for(int i =0; i<pt.length; i++) {
			((PayTable)pt[i]).calc();
			((PayTable)pt[i]).out();
		}

		System.out.println("---------------------------------------------"
				+ "------------------------------------------------------");
		System.out.println("�ο��� : " + PayTable.getCount() + "��");
	}
}
