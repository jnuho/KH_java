package com.exception.main;

import java.io.FileNotFoundException;

import com.exception.controller.ExceptionController;

public class Main {
	public static void main(String[] args) {
//	public static void main throws FileNotFoundException (String[] args) {
		//main throws -> JVM
		/*
		try {
			new ExceptionController().basicTest();
		}
		catch(ArithmeticException e) {
			e.printStackTrace();
		}
		catch(NullPointerException e) {
			e.printStackTrace();
		}
		catch(NegativeArraySizeException e) {
			e.printStackTrace();
		}
		catch(ArrayIndexOutOfBoundsException e) {
			e.printStackTrace();
		}
		finally {
			System.out.println("Exception �߻� ���ο� ��� ����, �ݵ�� �����");
		}*/
		
		//test1();
		/*try {
			new ExceptionController().test1();
		}
		catch(FileNotFoundException e) {
//			System.out.println(e.getMessage() + " ���� ó����!!!");
			e.printStackTrace();
		}
		catch(ArrayIndexOutOfBoundsException e) {
			System.out.println("Main���� Array index out of Bounds ���� ó��");
			e.printStackTrace();
		}
		finally {
			System.out.println("���� ó�� �� �ڵ� ����");
		}*/

//		new ExceptionController().fileException();
//		new ExceptionController().readFile2();
//		new ExceptionController().overrideException();

		new ExceptionController().myExceptionTest();
	}
}
