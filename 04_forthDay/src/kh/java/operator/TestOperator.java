package kh.java.operator;

import java.util.Scanner;

public class TestOperator {
	public static final Scanner CONSOLE = new Scanner(System.in);

	public void operFunc1() {
		System.out.print("���� �Է�: ");
		int num = CONSOLE.nextInt(); CONSOLE.nextLine();
		num /= 100;
		num *= 100;
		
		System.out.println("���: " + num);
	}
	
	public void operFunc2() {
		System.out.print("����  ����: ");
		int fruit = CONSOLE.nextInt();
		System.out.print("�ٱ��� ���� ��: ");
		int fruitPerBox = CONSOLE.nextInt(); CONSOLE.nextLine();
		
		int boxNum = fruit/fruitPerBox + 1;
		int lastBoxFruit = fruit % fruitPerBox;
		
		System.out.printf("%d���� ������ �������� %d���� �ʿ��մϴ�.\n"
				+ "������ �ٱ��Ͽ��� %d���� ������ �ֽ��ϴ�.", 
				fruit, boxNum, lastBoxFruit);
	}
	
	public void operFunc3() {
		System.out.print("���� �Է�: ");
		char ch = CONSOLE.nextLine().charAt(0);

//		char result = (char)(ch ^32);
		
		char result = (ch >='a' && ch <='z')? (char)(ch-32): 
			(ch>='A' && ch<='Z')? (char)(ch+32): 'X';
		System.out.println(result);
		
		if(ch >='a' && ch <= 'z')
			ch = (char)(ch-32);
		else if( ch>='A' && ch <='Z')
			ch = (char)(ch+32);
		else
			ch = '?';
		
		System.out.println(ch);
	}
}
