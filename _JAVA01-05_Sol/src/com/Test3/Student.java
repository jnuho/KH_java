package com.Test3;

public class Student {
	private String name;
	private int age;
	private int height;
	private int weight;
	
	public Student() {
		// TODO Auto-generated constructor stub
	}

	public Student(String name, int age, int height, int weight) {
		super();
		this.name = name;
		this.age = age;
		this.height = height;
		this.weight = weight;
	}
	
	public String studentInfo() {
		return name + age + height + weight;
	}

	public String getName() { return name; } 
	public void setName(String name) { this.name = name; } 
	public int getAge() { return age; } 
	public void setAge(int age) { this.age = age; } 
	public int getHeight() { return height; } 
	public void setHeight(int height) { this.height = height; } 
	public int getWeight() { return weight; } 
	public void setWeight(int weight) { this.weight = weight; }
	
	
	public static void main(String[] args) {
		Student[] studentArray = new Student[3];
		studentArray[0] = new Student("ȫ�浿",15,170,80);
		studentArray[1] = new Student("�ѻ��",13,180,70);
		studentArray[2] = new Student("�Ӱ���",16,175,65);

		double avg_age = 0, avg_height=0, avg_weight=0;
		Student max_age = studentArray[0], min_age = studentArray[0];
		Student max_height = studentArray[0], min_height = studentArray[0];
		Student max_weight = studentArray[0], min_weight = studentArray[0];

		System.out.println("�̸�\t����\t����\t������");
		for(int i =0; i<studentArray.length; i++) {
			if(studentArray[i].getAge() > max_age.getAge()) max_age = studentArray[i];
			if(studentArray[i].getAge() < min_age.getAge()) min_age = studentArray[i];
			if(studentArray[i].getHeight() > max_height.getHeight()) max_height = studentArray[i];
			if(studentArray[i].getHeight() < min_height.getHeight()) min_height = studentArray[i];
			if(studentArray[i].getWeight() > max_weight.getWeight()) max_weight = studentArray[i];
			if(studentArray[i].getWeight() < min_weight.getWeight()) min_weight = studentArray[i];
			avg_age += studentArray[i].getAge();
			avg_height += studentArray[i].getHeight();
			avg_weight += studentArray[i].getWeight();
			System.out.printf("%s\t%d\t%d\t%d", studentArray[i].getName(), 
									studentArray[i].getAge(), 
									studentArray[i].getHeight(),
									studentArray[i].getWeight());
		}
		avg_age /= (double)studentArray.length;
		avg_height /= (double)studentArray.length;
		avg_weight /= (double)studentArray.length;

		System.out.printf("���� ���: %.3f\n", avg_age);
		System.out.printf("���� ���: %.3f\n", avg_height);
		System.out.printf("������ ���: %.3f\n", avg_weight);

		System.out.println("���̰� ���� ���� �л�: " + max_age.getName());
		System.out.println("���̰� ���� ���� �л�: " + min_age.getName());
		System.out.println("������ ���� ū �л�: " + max_height.getName());
		System.out.println("������ ���� ���� �л�: " + min_height.getName());
		System.out.println("�����԰� ���� ���� ������ �л�: " + max_weight.getName());
		System.out.println("�����԰� ���� ���� ������ �л�: " + min_weight.getName());
		
	}
}
