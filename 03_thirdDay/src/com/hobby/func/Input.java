package com.hobby.func;

import java.util.Scanner;

public class Input {
	public void inputTest() {
		Scanner sc = new Scanner(System.in);
		
		System.out.print("����: ");
		int age = sc.nextInt(); sc.nextLine();
		
		System.out.print("���(���� ���� ,�� ����) ");
		String hobby = sc.nextLine();
		
		System.out.print("��°�: ");
		String address = sc.nextLine();

		System.out.print("Ű: ");
		double height = sc.nextDouble(); sc.nextLine();

		System.out.print("������: ");
		double weight = sc.nextDouble(); sc.nextLine();
		
		System.out.printf("\n���� : %d\n"
				+ "���: %s\n"
				+ "��°�: %s\n"
				+ "Ű: %f\n"
				+ "������: %f\n",
				age, hobby, address, height, weight);
	}
}
