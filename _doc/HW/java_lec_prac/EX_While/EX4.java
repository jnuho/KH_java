package EX_While;

import java.util.Scanner;

public class EX4 {
	
	public static void main(String[] args)
	{
		int i=0,count=0;
		String str;
		char ch;
		Scanner sc=new Scanner(System.in);
		System.out.print("���ڿ� �Է� : ");
		str=sc.nextLine();
		System.out.print("�˻� �����Է� : ");
		ch=sc.nextLine().charAt(0);
		
		while(i<str.length())
		{
			if('A'<=str.charAt(i) && str.charAt(i)<='z')
			{
				if(str.charAt(i) == ch) count++;
			}
			else
			{
				System.out.println("�����ڰ� �ƴմϴ�.");
				i=str.length();
			}
			i++;
		}
		if(i!=str.length()+1) System.out.println("���Ե� ���� : "+count+"��");
	}
}
