package com.student.view;

import java.util.List;
import java.util.Scanner;

import com.student.controller.StudentController;
import com.student.model.vo.Student;

public class MainView {
	StudentController controller;

	public void mainView(StudentController controller) {
		this.controller = controller;
		Scanner sc = new Scanner(System.in);
		int choice = -1;
		while(true) {
			System.out.println("=== �л����� ���α׷� ===");
			System.out.println("1. �л����");
			System.out.println("2. �л�����");
			System.out.println("3. �л���ȸ");
			System.out.println("0. ����");
			System.out.print("�Է�: ");
			choice = sc.nextInt();

			//������ �޴��� �̵��ϱ�!
			switch(choice) {
				case 1: controller.enrollStudent(); break;
				case 2: controller.updateStudent(); break;
				case 3: controller.searchStudent(); break;
				case 0:
					System.out.println("���α׷��� �����մϴ�.");
					controller.saveData();
					return;
			}
		}
	}
	
	public Student enrollStudent() {
		Scanner sc = new Scanner(System.in);
		System.out.println("=== �л���� ȭ�� ===");
		System.out.print("�̸� : ");
		String name = sc.nextLine();
		System.out.print("���� : ");
		int grade = sc.nextInt(); 
		System.out.print("�� : ");
		int room = sc.nextInt();
		System.out.print("��ȣ : ");
		int number = sc.nextInt(); sc.nextLine();
		System.out.print("�ּ� : ");
		String address = sc.nextLine();

		return new Student(name, grade, room, number, address);
	}
	
	public String searchInput() {
		Scanner sc = new Scanner(System.in);
		System.out.println("=== �л����� ===");
		System.out.print("������ �л��̸�: ");
		return sc.nextLine();
	}
	
	public int searchInput(List list) {
		//������ �л� �̸� �Է� �޾Ƽ�, index return
		
		return -1;
	}
	
	public void searchView(List list) {
		for(Object o : list) {
			if(o instanceof Student) {
				Student s =(Student)o;
				System.out.println(s);
			}
		}
	}

	
	
}
