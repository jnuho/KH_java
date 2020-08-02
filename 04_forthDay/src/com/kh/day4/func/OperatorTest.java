package com.kh.day4.func;

import java.util.Scanner;

public class OperatorTest {
	public static final Scanner CONSOLE = new Scanner(System.in);

	public void cal() {
		int num = 10;
		int num2 = 20;
		int num3 = 30;
		
		System.out.println(num2+ num3);
		System.out.println(num2 - num3);
		System.out.println(num2 * num3);
		System.out.println(num2/num3);
		System.out.println((double)num2/num3);
		System.out.println((double)(num2/num3));
		System.out.println(2.0/3);
		System.out.println(num2 % num3);

		int result = num2 /num3;
		double result2 = num2/num3; //integer.0
//		int total = result + result2; //ERROR
	}
	public void compare() {
		//�񱳿�����: �⺻�ڷ����� �� ����
		//String�� �� �Ұ�, char�� int�� �ν��Ͽ� �񱳰���
		int a = 25;
		int b = 20;
		int c = 25;
		
		//������
		System.out.println(a == b);
		System.out.println(a != b);
		System.out.println(a == c);
		System.out.println(a != c);
		System.out.println(a > b);
		System.out.println(a <= c);
		System.out.println(a >= b);
		
		//�Ǽ���
		double dnum = 12.34, dnum2 = 34.5;
		System.out.println(dnum != dnum2);
		System.out.println(dnum > dnum2);
		
		//���Ϲ��ں�
		char ch = 'a', ch2 = 'b', ch3= 'c';
		System.out.println(ch < ch2);
		System.out.println(ch > ch2);
		System.out.println(ch+ ch2);

		System.out.println((int)ch);
		System.out.println((int)ch2);
		
		//���ڿ� ��??
		String name = "����";
		String name2 = "������";
//		System.out.println(name > name2);
	}

	public void bitOper()
	{
		int a=10, b=22;
		String basic="00000000000000000000000000000000";

		//a��Ʈ��
		String bit=basic+Integer.toBinaryString(a);
		bit=bit.substring(bit.length()-32);
		System.out.println("a��Ʈ�� : "+bit);

		//b��Ʈ��
		bit=basic+Integer.toBinaryString(b);
		bit=bit.substring(bit.length()-32);
		System.out.println("b��Ʈ�� : "+bit);
		
		//a&b�����
		bit=basic+Integer.toBinaryString(a&b);
		bit=bit.substring(bit.length()-32);
		System.out.println("a&b��Ʈ�� : "+bit);

		//a|b�����
		bit=basic+Integer.toBinaryString(a|b);
		bit=bit.substring(bit.length()-32);
		System.out.println("a|b��Ʈ�� : "+bit);

		//a^b�����
		bit=basic+Integer.toBinaryString(a^b);
		bit=bit.substring(bit.length()-32);
		System.out.println("a^b��Ʈ�� : "+bit);

		//~a�����
		bit=basic+Integer.toBinaryString(~a);
		bit=bit.substring(bit.length()-32);
		System.out.println("~a��Ʈ�� : "+bit);

		//a<<2
		bit=basic+Integer.toBinaryString(a<<2);
		bit=bit.substring(bit.length()-32);
		System.out.println("a<<2��Ʈ�� : "+bit);

		//a>>2
		bit=basic+Integer.toBinaryString(a>>2);
		bit=bit.substring(bit.length()-32);
		System.out.println("a>>2��Ʈ�� : "+bit);
	}
	
	public void complexTest() {
		int a = 10, b = 20, c = 30;
		double d = 0;
		a += 3;
		System.out.println(a);
		a += b;
		System.out.println(a);
		a -= c;
		System.out.println(a);
		a /= b;
		System.out.println(a);
		a %= b;
		System.out.println(a);
		
		//����ڿ��� ����3���� �Է¹ް�, ������ ���ϴ� ���α׷�
		int sum = 0;
		System.out.print("1������ �Է�: ");
		sum += CONSOLE.nextInt(); CONSOLE.nextLine();
		System.out.print("2������ �Է�: ");
		sum += CONSOLE.nextInt(); CONSOLE.nextLine();
		System.out.print("3������ �Է�: ");
		sum += CONSOLE.nextInt(); CONSOLE.nextLine();
		
		System.out.println(sum);
	}
	
	//���� ������ condition ? trueRt : falseRt;
	public void thirdOper() {
		int a = 20;
		int b = 30;
		String msg = 
			a > b? "ù��°���� Ŀ.": "�ι�°���� Ŀ.";
		System.out.println(msg);
		
		System.out.print("ù��° �� �Է�(>=10): ");
		int first = CONSOLE.nextInt(); CONSOLE.nextLine();
		System.out.print("�ι�° �� �Է�(>=10): ");
		int second = CONSOLE.nextInt(); CONSOLE.nextLine();

		String msg2 = first>=10 && second>=10? 
				first > second? "ù��°���� Ŀ": "�ι�°���� Ŀ" : "10�̻��� �����Է� �ؾ���!!";
		System.out.println(msg2);
	}
	
	public void compareString() {
		String name = "aaa";
		System.out.println(name.equals("aaa"));
	}
}
