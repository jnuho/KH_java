package com.method.controller;

public class MethodTest {
	public void calculator1(int su1, int su2, char op) {
		double result = 0;
		switch(op) {
		case '+': result = su1 + su2; break;
		case '-': result = su1 - su2; break;
		case '*': result = su1 * su2; break;
		case '/': result = (double)su1 / su2; break;
		case '%': result = su1 % su2; break;
		default:
			System.out.println("������ �߸��Է�.");
			break;
		}
		System.out.println(su1 + " " + op + " " + su2 + " = " + result);
	}

	public double calculator2(int su1, int su2, char op) {
		double result = 0;
		switch(op) {
		case '+': result = su1 + su2; break;
		case '-': result = su1 - su2; break;
		case '*': result = su1 * su2; break;
		case '/': result = (double)su1 / su2; break;
		case '%': result = su1 % su2; break;
		default:
			System.out.println("������ �߸��Է�.");
			break;
		}
		System.out.println(su1 + " " + op + " " + su2 + " = " + result);
		return result;
	}
	
	//���ڿ� 2���� ��ģ�� return
	public String concatString(String s1, String s2) {
		return s1 + s2;
	}
	
	public String greeting() {
		return "�ȳ��ϼ���~";
	}
	
	//�迭 �ּҰ� return
	public int[] arrayReturn() {
		int[] arrInt = new int[5];
		for(int i =0; i<arrInt.length; i++) {
			arrInt[i] = i*10;
		}
		return arrInt;
	}
	
	public void inputArr(int[] copy) {
		for(int i =0; i<copy.length; i++) {
			copy[i] = i*20;
		}
	}
	
	public void intUpdate(int a, int b) {
		a = 40;
		b = 50;
	}
}
