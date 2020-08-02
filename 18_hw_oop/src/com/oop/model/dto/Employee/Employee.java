package com.oop.model.dto.Employee;

import com.oop.view.MainMenu;

public class Employee {
	private int empNo;
	private String empName;
	private String dept;
	private String job;
	private int age;
	private char gender;
	private int salary;
	private double bonusPoint;
	private String phone;
	private String address;

	private static Employee inst = null;
	
	public static Employee createEmployeeInst() {
		if (inst == null)
			inst = new Employee();
		return inst;
	}
	
	public Employee() {}

	public Employee(int empNo, String empName, String dept, String job, int age, char gender, int salary,
			double bonusPoint, String phone, String address) {
		super();
		this.empNo = empNo;
		this.empName = empName;
		this.dept = dept;
		this.job = job;
		this.age = age;
		this.gender = gender;
		this.salary = salary;
		this.bonusPoint = bonusPoint;
		this.phone = phone;
		this.address = address;
	}

	public void empInput() {
		Employee e = MainMenu.inputView();

		this.empNo = e.getEmpNo();
		this.empName = e.getEmpName();
		this.dept = e.getDept();
		this.job = e.getJob();
		this.age = e.getAge();
		this.gender = e.getGender();
		this.salary = e.getSalary();
		this.bonusPoint = e.getBonusPoint();
		this.phone = e.getPhone();
	}

	public void empOutput() {
		System.out.println("�����ȣ: " + empNo);
		System.out.println("����̸� " + empName);
		System.out.println("����μ�: " + dept);
		System.out.println("�����å: " + job);
		System.out.println("�������: " + age);
		System.out.println("�������: " + gender);
	}

	public static void modifyMenu(Employee e) {
		MainMenu.modifyView();

		String empName = null, dept= null, job = null;
		int salary = 0;

		int choice = MainMenu.CONSOLE.nextInt(); MainMenu.CONSOLE.nextLine();
		switch(choice) {
			case 1: System.out.print("����̸�: ");
				empName = MainMenu.CONSOLE.nextLine();
				e.setEmpName(empName);
				break;
			case 2: System.out.print("����޿�: ");
				salary = MainMenu.CONSOLE.nextInt(); MainMenu.CONSOLE.nextLine();
				e.setSalary(salary);
				break;
			case 3: System.out.print("����μ�: ");
				dept = MainMenu.CONSOLE.nextLine();
				e.setDept(dept);
				break;
			case 4: System.out.print("�����å: ");
				job = MainMenu.CONSOLE.nextLine();
				e.setJob(job);
				break;
			case 5: break;
		}
	}

	public int getEmpNo() { return empNo; }
	public void setEmpNo(int empNo) { this.empNo = empNo; }
	public String getEmpName() { return empName; }
	public void setEmpName(String empName) { this.empName = empName; }
	public String getDept() { return dept; }
	public void setDept(String dept) { this.dept = dept; }
	public String getJob() { return job; }
	public void setJob(String job) { this.job = job; }
	public int getAge() { return age; }
	public void setAge(int age) { this.age = age; }
	public char getGender() { return gender; }
	public void setGender(char gender) { this.gender = gender; }
	public int getSalary() { return salary; }
	public void setSalary(int salary) { this.salary = salary; }
	public double getBonusPoint() { return bonusPoint; }
	public void setBonusPoint(double bonusPoint) { this.bonusPoint = bonusPoint; }
	public String getPhone() { return phone; }
	public void setPhone(String phone) { this.phone = phone; }
	public String getAddress() { return address; }
	public void setAddress(String address) { this.address = address; }
}