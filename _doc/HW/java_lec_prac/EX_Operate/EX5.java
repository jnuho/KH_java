package EX_Operate;

import java.util.Scanner;

public class EX5 {

	public static void main(String[] args)
	{
		int a,b;
		double c;
		Scanner sc=new Scanner(System.in);
		System.out.print("ù��° ������ �Է��ϼ���");
		a=sc.nextInt();
		System.out.print("�ι�° ������ �Է��ϼ���");
		b=sc.nextInt();
		System.out.print("�Ǽ� �Ѱ��� �Է��ϼ���");
		c=sc.nextDouble();
		
		a+=20;
		b*=3;
		c/=4;
		a%=b;
		c-=a;
		
		System.out.println("a : "+a+"  b : "+b+"  c : "+c);
		sc.close();
		
	}
	
}
