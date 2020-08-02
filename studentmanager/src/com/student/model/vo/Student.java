package com.student.model.vo;

public class Student {
	//�л���
	private static int count = 0;
	private int studentNo;

	//�л�����
	private int number; //�й�
	private String name;
	private int year;
	private double score;

	{
		studentNo = count++;
	}

	public Student() {}
	
	public Student(int number, String name, int year, double score) {
		this.number = number;
		this.name = name;
		this.year = year;
		this.score = score;
	}

	public int getStudentNo() { return studentNo; }
	public void setStudentNo(int studentNo) { this.studentNo = studentNo; }
	public int getNumber() { return number; }
	public void setNumber(int number) { this.number = number; }
	public String getName() { return name; }
	public void setName(String name) { this.name = name; }
	public int getYear() { return year; }
	public void setYear(int year) { this.year = year; }
	public double getScore() { return score; }
	public void setScore(double score) { this.score = score; }
	public char getGrade() { 
		char grade = '\u0000';
		switch((int)score/10) {
			case 9: case 10: grade = 'A'; break;
			case 8: grade = 'B'; break;
			case 7: grade = 'C'; break;
			case 6: grade = 'D'; break;
			case 5:case 4: case 3: case 2: case 1: case 0:
				grade = 'F';
				break;
			default:
				System.out.println("�߸��� ������ �ԷµǾ� �ֽ��ϴ�.");
		}
		return grade;
	}

	public static int getCount() { return count; }
	public static void deleteCount() { Student.count--; }
	
	public void printStudent() {
		System.out.printf("%d �й� %d �г� %s �л��� ������ %.2f ������ %c�Դϴ�.\n",
				number, year, name, score, getGrade());
	}
}