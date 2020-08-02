package com.student.model.vo;

import java.io.Serializable;

public class Student implements Serializable {
	private static final long serialVersionUID = 1L;
	/*
	 * 1.���,����,��ȸ,����
	 * �л�(�г�, �� ,��ȣ, �ּ�)
	 * Student[5]
	 * students.stu ���� ���� /
	 * ������ �ҷ�����.����� �����ϱ�
	 */
	private String name;
	private int year;
	private int classRoom;
	private int num;
	private String address;
	//static member is ignored in serialization!
	//-> use 'studentNum' to store 'count' value
	private static int count = 0;

	{
		++count;
	}

	public Student(String name, int year, int classRoom, int num, String address) {
		super();
		this.name = name;
		this.year = year;
		this.classRoom = classRoom;
		this.num = num;
		this.address = address;
	}
	
	public void showStudentInfo() {
		System.out.println(this);
	}

	@Override
	public String toString() {
		return "Student [name=" + name + ", year=" + year + ", classRoom=" + classRoom + ", num=" + num + ", address="
				+ address + "]";
	}

	public String getName() { return name; }
	public void setName(String name) { this.name = name; }
	public int getYear() { return year; }
	public void setYear(int year) { this.year = year; }
	public int getClassRoom() { return classRoom; }
	public void setClassRoom(int classRoom) { this.classRoom = classRoom; }
	public int getNum() { return num; }
	public void setNum(int num) { this.num = num; }
	public String getAddress() { return address; }
	public void setAddress(String address) { this.address = address; }
	public static int getCount() { return count; }
	public static void setCount(int count) {Student.count = count;}
	public static void deleteCount() { Student.count--; }
	
}
