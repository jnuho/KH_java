package Workshop4;

import java.util.Scanner;

public class Test05 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.print("�����Է�(1~5): ");
		int num = sc.nextInt();
		int sum=0;
		if(num<1 || num>5) {
			System.out.println("�߸� �Է��ϼ̽��ϴ�.");
			return;
		}
		String result = "";
		for(int i=num; i<=10; i++) {
			if(i%3!=0 && i%5!=0) {
				sum+=i;
				result+=(i+"+");
			}
		}
		System.out.println(result.substring(0,result.length()-1));
		System.out.println("���: " + sum);
	}
}
