package EX_Condition_Control;

import java.util.Scanner;

public class EX3_2 {

	public static void main(String[] args) {
		int a, b;
		char str;
		Scanner sc=new Scanner(System.in);
		System.out.print("ù��° �ǿ����ڸ� �Է��ϼ��� : ");
		a=sc.nextInt();
		System.out.print("�ι�° �ǿ����ڸ� �Է��ϼ��� : ");
		b=sc.nextInt();
		sc.nextLine();
		System.out.print("�����ڸ� �Է����ּ���(+,-,*,/) :  ");
		str=sc.nextLine().charAt(0);
		if(a<0 && b<0) 
		{
			System.out.println("�߸��Է��ϼ̽��ϴ�. ���α׷��� �����մϴ�.");
		}
		else if(str=='+')
		{
			System.out.println(a+"+"+b+"="+a+b);
		}
		else if(str=='-')
		{
			System.out.println(a+"-"+b+"="+(a-b));
		}
		else if(str=='*')
		{
			System.out.println(a+"*"+b+"="+(a*b));
		}
		else if(str=='/')
		{
			System.out.println(a+"/"+b+"="+(a/b));//System.out.println(a+"/"+b+"="+((float)a/b));
		}
		else
		{
			System.out.println("�߸��Է��ϼ̽��ϴ�. ���α׷��� �����մϴ�.");
		}
	}
}