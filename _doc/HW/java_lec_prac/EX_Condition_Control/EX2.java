package EX_Condition_Control;

import java.util.Scanner;

public class EX2 {
	
	public static void main(String[] args)
	{
		int kor, eng, math, total;
		double avg;
		
		Scanner sc=new Scanner(System.in);
		System.out.print("������� �Է��ϼ��� : ");
		kor=sc.nextInt();
		System.out.print("������� �Է��ϼ��� : ");
		eng=sc.nextInt();
		System.out.print("���м����� �Է��ϼ��� : ");
		math=sc.nextInt();
		total=kor+eng+math;
		System.out.println("������ "+total+"��");
		avg=total/3.0;
		System.out.println("����� "+avg+"��");
		if(kor>=40 && eng>=40 && math>=40 && avg>=60)
		{
				System.out.println("�հ��Դϴ�.");
			
		}
		else
		{
			System.out.println("���հ��Դϴ�.");
		}
	}
}
