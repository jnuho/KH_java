package EX_Condition_Control;

import java.util.Scanner;

public class EX2_2 {

	public static void main(String[] args)
	{
		String name, gender;
		int grade, class_num, num;
		double avg;
		
		Scanner sc=new Scanner(System.in);
		System.out.print("�л��̸� : ");
		name=sc.nextLine();
		System.out.print("�г� : ");
		grade=sc.nextInt();
		System.out.print("�� : ");
		class_num=sc.nextInt();
		System.out.print("��ȣ : ");
		num=sc.nextInt();
		sc.nextLine();
		System.out.print("����(M/F) : ");
		gender=sc.nextLine();
		System.out.print("���� : ");
		avg=sc.nextDouble();
		
		if(gender.charAt(0)=='M')
		{
			gender="���л�";
		}
		else
		{
			gender="���л�";
		}
		
		System.out.printf("%d�г� %d�� %d�� %s %s�� ������ %.2f�̴�.",grade, class_num, num, gender, name, avg);
	}
	
}
