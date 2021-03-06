package kh.vari.function;

import java.util.Scanner;

public class VariExample {
	public static final Scanner CONSOLE = new Scanner(System.in);

	public void Example() {
		System.out.print("정수1 입력하세요: ");
		int n1 = CONSOLE.nextInt(); CONSOLE.nextLine();
		System.out.print("정수2 입력하세요: ");
		int n2 = CONSOLE.nextInt(); CONSOLE.nextLine();

		System.out.println(n1 + " + " + n2 + " = " + (n1+n2));
		System.out.println(n1 + " - " + n2 + " = " + (n1-n2));
		System.out.println(n1 + " * " + n2 + " = " + (n1*n2));
		System.out.println(n1 + " / " + n2 + " = " + (n1/n2));
	}

	public void Example2() {
		System.out.print("가로 값을 입력하세요: ");
		double width = CONSOLE.nextDouble(); CONSOLE.nextLine();
		System.out.print("세로 값을 입력하세요: ");
		double height = CONSOLE.nextDouble(); CONSOLE.nextLine();

		System.out.println("면적 = " + (width * height));
		System.out.println("둘레 = " + 2 * (width + height));
	}
	
	public void Example3() {
		System.out.print("문자열을 입력하세요: ");
		String word = CONSOLE.nextLine();
		
		if(word.length() >= 3) {
			System.out.println("첫번째 문자: " + word.charAt(0));
			System.out.println("두번째 문자: " + word.charAt(1));
			System.out.println("세번째 문자: " + word.charAt(2));
		}
	}
}
