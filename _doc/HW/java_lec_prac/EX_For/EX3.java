package EX_For;

import java.util.Scanner;

public class EX3 {

	public static void main(String[] args)
	{
		int su;
		Scanner sc=new Scanner(System.in);
		System.out.print("���� �Է� : ");
		su=sc.nextInt();
		for(int i=1;i<10;i++)
		{
			System.out.println(su+"X"+i+"="+su*i);
		}
	}
	
}
