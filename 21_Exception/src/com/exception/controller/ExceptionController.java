package com.exception.controller;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

import com.exception.common.MyException;

public class ExceptionController {
	private int[] nums = new int[3];

	public void basicTest()
			throws IOException{
			//ArithmeticException, NullPointerException,
			//	NegativeArraySizeException, ArrayIndexOutOfBoundsException {
		int su1 = 10;
		int su2 = 0;
//		System.out.println(su1/su2);
		
		String name = null;
//		System.out.println(name.charAt(0));
		
		int arrSize = -1;
//		int[] arr = new int[arrSize];
		
		int[] arr = new int[5];
		try {
			arr[5] = 10;
		}catch(ArrayIndexOutOfBoundsException e) {
			int[] copy = new int[10];
			//deep copy
			System.arraycopy(nums, 0, copy, 0, nums.length);
			nums = copy;
		}
		
		try {
			nums[5] = 10;
		} catch(ArrayIndexOutOfBoundsException e) {
			System.out.println("array index out of bounds ���� �߻�");
			e.printStackTrace();
		}
		finally {
			System.out.println(nums.length);
		}
	}
	
	public void test1() throws IOException{
	//ArrayIndexOutOfBoundsException, FileNotFoundException{
		System.out.println("test1 ����");
		test2();
	}
	
	public void test2() throws FileNotFoundException{
		System.out.println("test2 ����");
//		int[] nums = new int[3];
//		int a =nums[4];
		//������ ���� �߻�
		throw new FileNotFoundException();
	}
	
	public void fileException() {
		FileInputStream is =null;
		try {
			is = new FileInputStream(new File("test.txt"));
			System.out.println("�ȳ�");
		}
//FileNotFoundException: child
//IOException: parent class
//��� ���� Ŭ������ �θ� Exception
//		catch(FileNotFoundException e) { //checked exception
//			e.printStackTrace();
//			System.out.println("������ �����ϴ�.");
//		}
		//IOException(�θ�)�� FileNotFound(�ڽ�) ����
		//���� ������ ERROR
		catch (IOException e) {
			e.printStackTrace();
		}
		finally {
			System.out.println("�ȳ� �̰�!");
			try {
				is.close();
			} catch(IOException e) {
				e.printStackTrace();
			}
		}
		
		try {
			//Exception �߻�
		} catch(Exception e) {
			System.out.println("��� Exception �� �����");
			System.out.println(e.getMessage());
			System.out.println(e.getClass());
			//parsing�ؼ� � �������� �˼� ������,
			//���Ǽ� ������
//			e.getClass().toString()
		}
		finally {
			System.out.println("finally ��");
		}
	}
	
	public void readFile1() {
//		BufferedReader in = null;
//		try {
//			in = new BufferedReader(new FileReader("C:\\Users\\user1\\KH\\KH_java"));
//			String s;
//			while((s=in.readLine()) != null) {
//				System.out.println(s);
//			}
//		}catch(FileNotFoundException e) {
//			e.printStackTrace();
//		}
	}
	
	public void readFile2() {
		try(FileReader fr = new FileReader(new File("test.txt"));
			BufferedReader br = new BufferedReader(fr)) {
		}catch(FileNotFoundException e) {
			
		}catch(IOException e) {
			
		}
	}
	
	//throws Exception �ִ� �޼ҵ� �������̵� ��,
	//throws Exception, ChildException ,... etc()
	public void overrideException() {
	}
	
	//����� ���� ����ó��
	public void myExceptionTest() {
		try {
			//���� �߻���Ŵ
			throw new MyException("���� ����ó��");
		} catch(MyException e) {
			//���� �޾Ƽ� ó��
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
	}
	
	
}
