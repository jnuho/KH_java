package com.student.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;

import com.student.model.vo.Student;
import com.student.view.MainMenu;

public class StudentController {
	/*
	 * 1.���,����,��ȸ,����
	 * �л�(�г�, �� ,��ȣ, �ּ�)
	 * Student[5]
	 * students.stu ���� ���� /
	 * ������ �ҷ�����.����� �����ϱ�
	 */
	
	private Student[] students = new Student[5];
	private File file = new File("Student.stu");
	private int studentCount;
	
	private MainMenu menu;

	public void mainMenu() {
		if(menu == null)
			menu = new MainMenu();

		readFromFile();
		MainMenu.mainMenu();
	}

	public void writeToFile() {
		try(ObjectOutputStream oos = 
				new ObjectOutputStream(new FileOutputStream(file))){
			oos.writeObject(students);
		} catch(IOException e) {
			e.printStackTrace();
		}
	}
	
	public void readFromFile() {
		if(file.exists() == false) 
			return;
	
		try (ObjectInputStream ois = 
				new ObjectInputStream(new FileInputStream(file))){

			students = (Student[])ois.readObject();
			for(int i =0; i<students.length; i++)
				if(students[i] == null) {
					Student.setCount(i);
					break;
				}
		}
		catch(IOException e) {
			e.printStackTrace();
		}
		catch(ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	public void enroll() {
		Student s = MainMenu.enrollView();
		if(Student.getCount() <= students.length)
			students[Student.getCount() - 1] = s;
	}
	
	public void modify() {
		
	}
	public void search() {
		if(Student.getCount() <1) {
			System.out.println("��ϵ� �л��� �����ϴ�.");
			return;
		}
		String name = MainMenu.searchView();
		for(int i =0; i<Student.getCount(); i++) {
			if(students[i].getName().equals(name))
				students[i].showStudentInfo();
		}

	}
	
	
	
	public void searchAll() {
		if(Student.getCount() <1) {
			System.out.println("��ϵ� �л��� �����ϴ�.");
			return;
		}
		for(int i =0; i<Student.getCount(); i++) {
			students[i].showStudentInfo();
		}
	}

	public Student[] getStudents() { return students; }
	public void setStudents(Student[] students) { this.students = students; }
}
