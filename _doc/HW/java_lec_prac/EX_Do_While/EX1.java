package EX_Do_While;

import java.util.Scanner;

public class EX1 {
	public static void main(String[] args)
	{
		int choice, count=0, sum=0;
		char flag;
		String menu="";
		Scanner sc=new Scanner(System.in);
		
		do{
			System.out.printf("����===============\n1.�������===========1000��\n"
					+ "2.ġ����===========1200��\n3.��ġ���===========2000��\n"
					+ "���================\n4.�׳ɶ��===========1200��\n"
					+ "5.ġ����===========1500��\n6.«�Ͷ��===========2000��\n"
					+"��Ÿ================\n7.Ƣ��=============1200��\n"
					+"8.����=============2500��\n9.����=============1000��\n"
					+"10.�����============800��\n"
					);
			System.out.print("�޴����� : ");
			choice=sc.nextInt();
			System.out.print("�������� : ");
			count=sc.nextInt();
			System.out.println(count+"�� �ֹ��ϼ̽��ϴ�.");
			sc.nextLine();
			switch(choice)
			{
				case 1 : menu+="������� : "+count+"�� - "+(count*1000)+"��\n";sum+=(count*1000);break;
				case 2 : menu+="ġ���� : "+count+"�� - "+(count*1200)+"��\n";sum+=(count*1200);break;
				case 3 : menu+="������ : "+count+"�� - "+(count*2000)+"��\n";sum+=(count*2000);break;
				case 4 : menu+="�׳ɶ�� : "+count+"�� - "+(count*1200)+"��\n";sum+=(count*1200);break;
				case 5 : menu+="ġ���� : "+count+"�� - "+(count*1500)+"��\n";sum+=(count*1500);break;
				case 6 : menu+="«�Ͷ�� : "+count+"�� - "+(count*2000)+"��\n";sum+=(count*2000);break;
				case 7 : menu+="Ƣ�� : "+count+"�� - "+(count*12000)+"��\n";sum+=(count*1200);break;
				case 8 : menu+="���� : "+count+"�� - "+(count*2500)+"��\n";sum+=(count*2500);break;
				case 9 : menu+="���� : "+count+"�� - "+(count*1000)+"��\n";sum+=(count*1000);break;
				case 10 : menu+="����� : "+count+"�� - "+(count*800)+"��\n";sum+=(count*800);break;
				default : System.out.println("�޴��� ���� ��ȣ�Դϴ�. �ٽ��Է����ּ���");break;
			}
			if(menu!="") 
			{
				System.out.print("�߰��ֹ��Ͻðڽ��ϱ�?(y/n) ");
				
				flag=sc.nextLine().charAt(0);
				
				if(flag!='y' && flag!='Y') break;
			}
			
		}while(true);
		System.out.println("*�ֹ��Ͻ� ������ ������ �����ϴ�.*\n=========================");
		System.out.println(menu);
		System.out.println("=========================\n�� ���� : "+sum+"��");
	}
}
