package EX_While;

import java.util.Scanner;

public class EX2 {
	
	public static void main(String[] args)
	{
		int choice, i=1;
		Scanner sc=new Scanner(System.in);
		System.out.print("���� �Է� : ");
		choice=sc.nextInt();
		
		while(i<=choice)
		{
			if(i%2==0) System.out.print("��");
			else System.out.print("��");
			i++;
		}
	}

}
