package EX_Operate;

import java.util.Scanner;

public class EX7 {
	
	public static void main(String[] args)
	{
		int A,B,C, sum;
		double avg;
		Scanner sc= new Scanner(System.in);
		System.out.print("A�� ������ �Է��ϼ��� : ");
		A=sc.nextInt();
		System.out.print("B�� ������ �Է��ϼ��� : ");
		B=sc.nextInt();
		System.out.print("C�� ������ �Է��ϼ��� : ");
		C=sc.nextInt();
		sum=A+B+C;
		avg=sum/3.0;
		//System.out.println("ȸ�� ������ �� ���� : "+(A+B+C));
		//System.out.println("ȸ�� ������ �� ���� : "+(A+B+C)/3.0);
		System.out.println("ȸ�� ������ �� ���� : "+sum+"����");
		System.out.printf("ȸ�� ������ �� ���� : %.2f����\n",avg);
		
		A+=A*0.05;
		C+=C*0.1;
		System.out.println("A�� �μ�Ƽ�������� �޿��� : "+A+"����");
		System.out.println("B�� �μ�Ƽ�������� �޿��� : "+B+"����");
		System.out.println("C�� �μ�Ƽ�������� �޿��� : "+C+"����");
		sc.close();
		
	}
	
	
}
