package com.kh.day3.function;

import java.util.Scanner;

public class ScannerTest {
	public void inputTest() {
		//�ǽ�����
		Scanner sc = new Scanner(System.in);
		
		System.out.print("Your Name: ");
		String name = sc.nextLine();

		System.out.print("Your age: ");
		int age = sc.nextInt(); sc.nextLine();

		System.out.print("Your address : ");
		String address = sc.nextLine();

		System.out.print("Your height: ");
		double height = sc.nextDouble(); sc.nextLine();

		System.out.print("Your weight: ");
		double weight = sc.nextDouble(); sc.nextLine();
		
		System.out.print("Your gender: ");
		char gender = sc.nextLine().charAt(0);

		System.out.printf("\n�̸� : %d\n"
				+ "����: %d\n"
				+ "�ּ�: %s\n"
				+ "Ű: %f\n"
				+ "������: %f\n"
				+ "����: %c\n",
				name, age, address, height, weight, gender);
	}
}
