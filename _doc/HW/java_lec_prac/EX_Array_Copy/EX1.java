package EX_Array_Copy;

import java.util.Arrays;
import java.util.Scanner;

public class EX1 {

	public static void main(String[] args)
	{
		Scanner sc=new Scanner(System.in);
		System.out.print("�ֹε�Ϲ�ȣ �Է�(-���� �Է�) : ");
		String jumin=sc.nextLine();
		if(jumin.length()==13)
		{
			char[] ch=jumin.toCharArray();//�迭����
			for(int i=0;i<ch.length;i++)
			{
				
				if(i>6)
				{
					ch[i]='*';
					System.out.print(ch[i]);
				}
				else if(i==6) 
				{
					System.out.print('-');
					System.out.print(ch[i]);
				}
				else System.out.print(ch[i]); 
			}
			
		}
		
	}
	
}
