package com.student.view;

import java.util.Scanner;

import com.student.controller.StudentController;
import com.student.main.Main;
import com.student.model.vo.Student;

public class MainMenu {
	
	public final static Scanner CONSOLE = new Scanner(System.in);
	static StudentController controller = Main.getController();
	/*
	 * 1.���,����,��ȸ,����
	 * �л�(�г�, �� ,��ȣ, �ּ�)
	 * Student[5]
	 * students.stu ���� ���� /
	 * ������ �ҷ�����.����� �����ϱ�
	 */
	public static void mainMenu() {
		int choice = -1;

		do {
			System.out.println("=== ���θ޴� ===");
			System.out.println("1.�л���� ");
			System.out.println("2.�л����� ");
			System.out.println("3.�л���ȸ ");
			System.out.println("4.�л���ü ��ȸ");
			System.out.println("0.���α׷� ����");
			System.out.print("�޴� ����: ");
			choice= CONSOLE.nextInt(); CONSOLE.nextLine();
			switch(choice) {
				case 1: controller.enroll(); break;
				case 2: controller.modify(); break;
				case 3: controller.search(); break;
				case 4: controller.searchAll(); break;
				case 0:
					controller.writeToFile();
					System.out.println("���α׷��� �����մϴ�.");
					return;
			}
		} while(choice != 0);
	}

	public static Student enrollView() {
		System.out.println("=== �л� ��� ===");
		System.out.print("�л� �̸�: ");
		String name = CONSOLE.nextLine();
		System.out.print("�л� �г�: ");
		int year = CONSOLE.nextInt(); CONSOLE.nextLine();
		System.out.print("�л� ��: ");
		int classRoom = CONSOLE.nextInt(); CONSOLE.nextLine();
		System.out.print("�л� ��ȣ: ");
		int num = CONSOLE.nextInt(); CONSOLE.nextLine();
		System.out.print("�л� �ּ�: ");
		String address = CONSOLE.nextLine();
		
		Student s = new Student(name, year, classRoom, num, address);
		return s;
	}

	public static Student modifyView() {
		System.out.println("=== �л� ���� ===");
		System.out.print("�л� �̸�: ");
		String name = CONSOLE.nextLine();
		System.out.print("�л� �г�: ");
		int year = CONSOLE.nextInt(); CONSOLE.nextLine();
		System.out.print("�л� ��: ");
		int classRoom = CONSOLE.nextInt(); CONSOLE.nextLine();
		System.out.print("�л� ��ȣ: ");
		int num = CONSOLE.nextInt(); CONSOLE.nextLine();
		System.out.print("�л� �ּ�: ");
		String address = CONSOLE.nextLine();
		
		Student s = new Student(name, year, classRoom, num, address);
		return s;
	}

	public static String searchView() {
		System.out.println("=== ��ȸ�� �л�  ===");
		System.out.print("�л� �̸�: ");
		String name = CONSOLE.nextLine();
		return name;
	}
}
