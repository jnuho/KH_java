package kh.vari.function;

import java.util.Scanner;

public class VariExample {
	public static final Scanner CONSOLE = new Scanner(System.in);

	public void Example() {
		System.out.print("����1 �Է��ϼ���: ");
		int n1 = CONSOLE.nextInt(); CONSOLE.nextLine();
		System.out.print("����2 �Է��ϼ���: ");
		int n2 = CONSOLE.nextInt(); CONSOLE.nextLine();

		System.out.println(n1 + " + " + n2 + " = " + (n1+n2));
		System.out.println(n1 + " - " + n2 + " = " + (n1-n2));
		System.out.println(n1 + " * " + n2 + " = " + (n1*n2));
		System.out.println(n1 + " / " + n2 + " = " + (n1/n2));
	}

	public void Example2() {
		System.out.print("���� ���� �Է��ϼ���: ");
		double width = CONSOLE.nextDouble(); CONSOLE.nextLine();
		System.out.print("���� ���� �Է��ϼ���: ");
		double height = CONSOLE.nextDouble(); CONSOLE.nextLine();

		System.out.println("���� = " + (width * height));
		System.out.println("�ѷ� = " + 2 * (width + height));
	}
	
	public void Example3() {
		System.out.print("���ڿ��� �Է��ϼ���: ");
		String word = CONSOLE.nextLine();
		
		if(word.length() >= 3) {
			System.out.println("ù��° ����: " + word.charAt(0));
			System.out.println("�ι�° ����: " + word.charAt(1));
			System.out.println("����° ����: " + word.charAt(2));
		}
	}
}
