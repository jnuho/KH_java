package com.student.controller;

import com.student.model.vo.Student;
import com.student.view.MainMenu;

public class StudentController {
	private static final int MAX_CNT = 5;
	private Student[] students = new Student[MAX_CNT];
	private MainMenu menu;
	
	public void mainMenu() {
		menu = new MainMenu();
		menu.mainMenu();
	}
	
	public void enroll() {
		if(Student.getCount() < MAX_CNT) {
			Student s = menu.enrollView();
			students[Student.getCount()-1] = s;
		}
		else {
			System.out.println("  ���̻� ��� �� �� �����ϴ�.");
		}
	}

	public void delete() {
		boolean flag = menu.delete(students);
		if (flag)
			System.out.println("���� �Ϸ�!");
		else
			System.out.println("���� ���� �ʾҽ��ϴ�.");
	}
	
	public void update() {
	}
	
	public void search() {
		for(int i =0; i<Student.getCount(); i++) {
			System.out.print(students[i].getName() + " ");
		}
		System.out.println();
	}

	public void updateScore() {
	}

	public Student[] getStudents() { return students; }
	
	//remove new line character from buffer
	private void readNewLine() {
		if(MainMenu.CONSOLE.hasNextLine())
			MainMenu.CONSOLE.nextLine();
	}
}