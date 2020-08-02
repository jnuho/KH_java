package com.student.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.WriteAbortedException;
import java.util.ArrayList;
import java.util.List;

import com.student.model.vo.Student;
import com.student.view.MainView;

/* view, controller �ϳ����� ����! 
 * */
public class StudentController {
	private List<Student> list = new ArrayList<Student>();

	private MainView mainMenu = new MainView();

	public void mainMenu() {
		this.loadData();
		mainMenu.mainView(this);
	}
	
	public void enrollStudent() {
		Student s = mainMenu.enrollStudent();
		list.add(s);
	}
	
	public void updateStudent() {
		//�����Ϸ��� �л�ã��
		int index = mainMenu.searchInput(list);
		//���� ���� �Է�
		Student s = mainMenu.enrollStudent();
		//���� �ϱ�
		if(index >=0)
			list.set(index, s);
		
		mainMenu.searchView(list);
	}

	public void searchStudent() {
		mainMenu.searchView(list);
		
//		for(Object s : list) {
//			if(s instanceof Student) {
//				Student temp = (Student)s;
//				if(temp.getName().equals(name)) {
//					System.out.println("SEARCH ����!");
//				}
//			}
//		}
	}

	//dao ��Ű��
	public void saveData() {
		//write
		ObjectOutputStream oos = null;
		
		try {
			oos = new ObjectOutputStream(new FileOutputStream("student.dat"));
			oos.writeObject(list);
		} catch(IOException e){
			e.printStackTrace();
		} finally {
			try {
				oos.close();
			} catch(IOException e) {
				e.printStackTrace();
			}
		}
	}
	
	public void loadData() {
		File file = new File("student.dat");
		if(file.exists()) {
			ObjectInputStream ois = null;
			try {
				ois = new ObjectInputStream(new FileInputStream("student.dat"));
				this.list = (List<Student>)ois.readObject();
			} catch(WriteAbortedException e) {
				
			} catch(Exception e) {
				e.printStackTrace();
			} finally {
				try {
					ois.close();
				} catch(IOException e) {
					e.printStackTrace();
				}
			}
		}
	}
}
