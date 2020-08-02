package com.student.view;

import java.util.Scanner;

import com.student.controller.StudentController;
import com.student.main.Main;
import com.student.model.vo.Student;

public class MainMenu {
	public static final Scanner CONSOLE = new Scanner(System.in);
	StudentController controller = Main.getController();

	public void mainMenu(){
		int choice = -1;

		do{
			System.out.println("1.�л� ���");
			System.out.println("2.�л� ��ȸ");
			System.out.println("3.�л� ����");
			System.out.println("4.�л����� �Է�");
			System.out.println("5.�л� ����");
			System.out.println("0.���α׷� ����");
			System.out.print("�Է�: ");
			choice = CONSOLE.nextInt(); readNewLine();
			switch(choice){
				case 1: controller.enroll(); break;
				case 2: controller.search(); break;
				case 3: controller.update(); break;
				case 4: controller.updateScore(); break;
				case 5: controller.delete(); break;
				case 0: 
					System.out.println("���α׷��� �����մϴ�.");
					return;
			}
		}while(choice != 0);
	}
	
	public Student enrollView(){
		System.out.println("====�л���� ȭ��====");
		System.out.print("  �л��̸� : ");
		String name=MainMenu.CONSOLE.nextLine();
		System.out.print("  �г�(1~3): ");
		int year=MainMenu.CONSOLE.nextInt();
		System.out.print("  ��ȣ : ");
		int number=MainMenu.CONSOLE.nextInt();
		System.out.print("  ����(��� 1~100) : ");
		double score =MainMenu.CONSOLE.nextDouble();

		Student s = new Student(number, name, year, score);
		return s;
	}
	
	public boolean delete(Student[] students) {
		System.out.print("  ������ �л��̸� : ");
		String name = CONSOLE.nextLine();

		if(Student.getCount() > 0) {
			int idx = search(name);
			if (idx != -1) {
				students[idx] = null;
				for(int i=idx ; i<Student.getCount()-1; i++)
					students[i] = students[i+1];
				students[Student.getCount() -1] = null;
				Student.deleteCount();
				return true;
			}
			else {
				return false;
			}
		}
		else {
			System.out.println("��ϵ� �л��� �����ϴ�.");
			return false;
		}
	}

	private int search(String name) {
		for(int i =0; i<Student.getCount(); i++) {
			if(name.equals(Main.getController().getStudents()[i].getName()))
				return i;
		}
		return -1;
	}
	
	private void readNewLine() {
		if(CONSOLE.hasNextLine())
			CONSOLE.nextLine();
	}
}