package EX_Condition_Control;

import java.util.Scanner;

public class EX1 {

	public static void main(String[] args)
	{
		int kor, eng, math, total;
		double avg;
		Scanner sc=new Scanner(System.in);
		System.out.print("���� ���� : ");
		kor=sc.nextInt();
		System.out.print("���� ���� : ");
		eng=sc.nextInt();
		System.out.print("���� ���� : ");
		math=sc.nextInt();
		
		total=kor+eng+math;
		System.out.println("���� : "+total);
		if(total>=250) //if((kor+eng+math)>=250)
		{
			System.out.println("������Դϴ�.");
		}
	}
	
}
