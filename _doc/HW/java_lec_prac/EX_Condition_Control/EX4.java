package EX_Condition_Control;

import java.util.Scanner;

public class EX4 {

	public static void main(String[] args)
	{
		int su;
		Scanner sc=new Scanner(System.in);
		System.out.print("�����Է� : ");
		su=sc.nextInt();
		if(0<su && su<=10)
		{
			if(su%2==0)
			{
				System.out.println("¦����");
			}
			else
			{
				System.out.println("Ȧ����");
			}
		}
	}
}
