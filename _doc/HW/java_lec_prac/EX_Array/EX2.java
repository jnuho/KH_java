package EX_Array;

import java.util.Scanner;

public class EX2 {
	
	public static void main(String[] args)
	{
		String str[]=new String[5];
		str[0]="�ٳ���";
		str[1]="������";
		str[2]="Ű��";
		str[3]="���";
		
		System.out.println(str[0]);
		//for�� �̿�
		Scanner sc=new Scanner(System.in);
		
		String[] str1=new String[5];
		for(int i=0;i<str.length;i++)
		{
			System.out.print(i+1+"��° �Է°� : ");
			str1[i]=sc.nextLine();
		}
		
		for(String temp : str1)
		{
			System.out.print(temp);
		}
		sc.close();
	}
}
