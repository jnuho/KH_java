package EX_Array;

import java.util.Scanner;

public class EX3 {

	public static void main(String[] args)
	{
		int input;
		Scanner sc=new Scanner(System.in);
		System.out.print("���� �����Է� : ");
		input=sc.nextInt();
		
		int arr[]=new int[input];
		
		if(input%2!=0)
		{
			int num=0;
			for(int i=0;i<arr.length;i++)
			{
				
				if(arr.length/2>=i)
				{
					arr[i]=i+1;	
				}
				else 
				{
					num+=2;
					arr[i]=(i+1)-num;
				}
			}
			for(int temp : arr)
			{
				System.out.print(temp);
			}
		}
		else System.out.println("Ȧ���� �ƴմϴ�. Ȧ���� �Է����ּ���");
	}
	
}
