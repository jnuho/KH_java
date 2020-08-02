package com.ooparr.model.vo;

//public final class Person {
//final class NO inheritance allowed
public class Person{
	private String name;
	private int age;
	//protected!
	protected String address;
	private char gender;
	
	public Person() {}
	public Person(String name, int age, String address, char gender) {
		this.name = name;
		this.age = age;
		this.address = address;
		this.gender = gender;
	}

	//getter setter
	public String getName() {return name;}
	public void setName(String name) {this.name= name;}
	public int getAge() {return age;}
	public void setAge(int age) { this.age = age;}
	public String getAddress() { return address;}
	public void setAddress(String address) {this.address = address;}
	public char getGender() { return gender; }
	public void setGender(char gender) { this.gender = gender; }

	
	int plus(int a, int b) {
		return a + b;
	}

	@Override
	public String toString() {
		return "Person [name=" + name + ", age=" + age + ", address=" + address + ", gender=" + gender + ", getName()="
				+ getName() + ", getAge()=" + getAge() + ", getAddress()=" + getAddress() + ", getGender()="
				+ getGender() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()="
				+ super.toString() + "]";
	}
}
