package com.kh.day3.function;

public class CastingTest {
	public void castingTest() {
		//�ڵ�����ȯ implicit
		int account = 1000;
		long accountVip = account;  //int->long
//		account = accountVip; ERROR

		int su = 10;
		double height = 180.5;
		double result = su+height; //int->double
//		int result = su+height; // ERROR
		System.out.println(result);
		
		char ch = 'A';
		int character = ch; //char -> int
		System.out.println((char)(character+1));
		

		//��������ȯ explicit
		byte bnum = 100;
		byte bnum2 = 100;
//		byte bresult = bnum + bnum2; //ERROR (int->byte)
		byte bresult = (byte)(bnum + bnum2); //data loss

		int a = 19, b= 20;
		int iresult = a + b;
		System.out.println((double)a/b);
		
		double d = 18.7;
		double e = 20.0;
		double f = d+e;
		int cast = (int)d;
		System.out.println(cast);

//		RAM ����
//		static ��𼭵� ��밡��
//		heap ����� ���� new object(); gc�� ���� �Ҹ� �ȵ� 
//		stack �������� �� �˾Ƽ� �޸� �Ҵ�/�Ҹ�
		
		System.out.printf("%d�� %d�̾�. %f", 
				character, bresult, (double)a/b);
		String name = "lalala";
		int age = 19;
		char gender = 'M';
		double weight = 65.5;
		System.out.printf("\nMy name is %s, age is %d.\n"
				+ "gender is %c, weight is %.2f", name, age, gender, weight);

		System.out.println("\n\n\"name\"\tage\tgender\tweight");
		System.out.printf("%-5s\t%d\t%c\t%.2f", name, age, gender, weight);
		//%-5s : left align with 5 whitespaces
		
	}
}
