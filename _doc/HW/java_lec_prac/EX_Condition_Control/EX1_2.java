package EX_Condition_Control;

import java.util.Scanner;

public class EX1_2 {

	public static void main(String[] args)
	{
		int A, B, C, total;
		double avg;
		Scanner sc=new Scanner(System.in);
		System.out.print("A ���� : ");
		A=sc.nextInt();
		System.out.print("B ���� : ");
		B=sc.nextInt();
		System.out.print("C ���� : ");
		C=sc.nextInt();
		
		if(A>500)
		{
			System.out.println("A�� ��׿������Դϴ�.");
		}
		if(B>500){
			System.out.println("B�� ��׿������Դϴ�.");
			
		}
		if(C>500){
			System.out.println("C�� ��׿������Դϴ�.");
		}
	}
	
}
