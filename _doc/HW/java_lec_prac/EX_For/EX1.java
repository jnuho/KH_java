package EX_For;

import java.util.Scanner;

public class EX1 {

	public static void main(String[] args)
	{
		int su, sum=0;
		Scanner sc=new Scanner(System.in);
		System.out.print("�����Է� : ");
		su=sc.nextInt();
		for(int i=0;i<=su;i++)
		{
			if(su%2==0)
			{
				sum+=i;
			}
		}
		System.out.println("¦���� �� : "+sum);
	}
	
}
