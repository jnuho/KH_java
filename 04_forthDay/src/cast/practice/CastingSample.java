package cast.practice;

import java.util.Scanner;

public class CastingSample {
	public static final Scanner CONSOLE = new Scanner(System.in);

	public void printUniCode() {
		System.out.print("���� �Է�: ");
		char ch = CONSOLE.nextLine().charAt(0);
		System.out.println(ch + " is unicode: " + (int)ch);
	}
	
	public void calculatorScore() {
		System.out.print("����: ");
		double kor = CONSOLE.nextDouble(); 
		System.out.print("����: ");
		double eng = CONSOLE.nextDouble();
		System.out.print("����: ");
		double math = CONSOLE.nextDouble(); CONSOLE.nextLine();
		
		int total = (int)(kor+eng+math);
		int avg = total/3;
		System.out.println("����: " + total);
		System.out.println("���: " + avg);
	}
	
	public void printBitCount() {
		System.out.print("���� �Է�: ");
		int num = CONSOLE.nextInt(); CONSOLE.nextLine();
		

		System.out.printf("%d�� 2������ ���Ե� 1�� ����: %d", 
				num, Integer.bitCount(num));
	}
}
