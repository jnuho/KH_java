package com.oop.view;

import java.util.Scanner;
import com.oop.model.dto.Employee.Employee;

public class MainMenu {
	public final static Scanner CONSOLE = new Scanner(System.in);
	static Employee e = Employee.createEmployeeInst();

	public static void mainMenu() {
		int choice = 0;
		do {
			System.out.println("1.��� �Է�");
			System.out.println("2.��� ����");
			System.out.println("3.��� ����");
			System.out.println("4.��� ���");
			System.out.println("9.���α׷� ����");
			System.out.print("�޴�����: ");
			choice = CONSOLE.nextInt(); CONSOLE.nextLine();
			switch(choice) {
				case 1: e.empInput(); break;
				case 2: Employee.modifyMenu(e); break;
				case 3:	break;
				case 4: e.empOutput(); break;
				case 9: System.out.println("���α׷��� �����մϴ�."); return;
				default: System.out.println("�߸��� �޴��Է� �Դϴ�."); break;
			}
		} while(choice != 9);
	}
	
	public static Employee inputView() {
		System.out.println("===== ��� �Է� =====");
		System.out.print("��� ��ȣ: ");
		int empNo = CONSOLE.nextInt(); CONSOLE.nextLine();
		System.out.print("��� �̸�: ");
		String empName = CONSOLE.nextLine();
		System.out.print("��� �μ�: ");
		String dept = CONSOLE.nextLine();
		System.out.print("��� ��å: ");
		String job = CONSOLE.nextLine();
		System.out.print("��� ����: ");
		int age = CONSOLE.nextInt(); CONSOLE.nextLine();
		System.out.print("��� ����: ");
		char gender = CONSOLE.nextLine().charAt(0);
		System.out.print("��� �޿�: ");
		int salary = CONSOLE.nextInt(); CONSOLE.nextLine();
		System.out.print("��� ���ʽ�: ");
		int bonusPoint = CONSOLE.nextInt(); CONSOLE.nextLine();
		System.out.print("��� ��ȭ: ");
		String phone = CONSOLE.nextLine();
		System.out.print("��� �ּ�: ");
		String address = CONSOLE.nextLine();

		return new Employee(empNo, empName, dept, job, age, gender, salary, bonusPoint, phone, address);
	}

	public static void modifyView() {
		System.out.println("**** ��� ���� ���� �޴� *****");
		System.out.println("1. �̸� ����");
		System.out.println("2. �޿� ����");
		System.out.println("3. �μ� ����");
		System.out.println("4. ���� ����");
		System.out.println("5. ���� �޴��� �̵�");
		System.out.print("�޴�����: ");

	}
}
