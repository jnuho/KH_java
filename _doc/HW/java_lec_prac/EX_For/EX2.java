package EX_For;

import java.util.Scanner;

public class EX2 {

	public static void main(String[] args)
	{
		int su;
		String temp="";
		Scanner sc=new Scanner(System.in);
		System.out.print("�����Է� : ");
		su=sc.nextInt();
		
		for(int i=1;i<=su;i++)
		{
			if(i%2==0) temp+="��";
			else temp+="��";
		}
		System.out.println(temp);
	}
	
}

