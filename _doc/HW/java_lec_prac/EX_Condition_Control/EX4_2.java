package EX_Condition_Control;

import java.util.Scanner;

public class EX4_2 {

	public static void main(String[] args)
	{
		int weight;
		double height,bmi;
		
		Scanner sc=new Scanner(System.in);
		System.out.print("Ű�Է� : ");
		height=sc.nextDouble()/100;
		System.out.print("������ �Է� : ");
		weight=sc.nextInt();
		bmi=weight/(height*height);
		
		if(bmi<20)
		{
			System.out.println("��ü��");
		}
		else if(20<=bmi && bmi<25)
		{
			System.out.println("����ü��");
		}
		else if(25<=bmi && bmi<30)
		{
			System.out.println("������");
		}			
		else if(bmi>30)
		{
			System.out.println("��");
		}
		
	}
	
}
