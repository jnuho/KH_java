package EX_Array_Copy;

import java.util.Arrays;
import java.util.Scanner;

public class EX2 {

	public static void main(String[] args) {
		
		char value[]=new char[4];
		char input[]=new char[4];
		int strike=0, ball=0;
		int count=0;
		String temp;
		Scanner sc=new Scanner(System.in);
		System.out.println("============ ���ݺ��� �߱������� �������� ============");
		for(int i=0;i<4;i++)
		{   
			int temp1=(int)(Math.random()*9);
			value[i]=(Integer.toString(temp1)).charAt(0);
			
				for(int j=0;j<i;j++)
				{
					if(value[i]==value[j])
					{
						i--;break;
					}
				}
		}
		
		while(true)
		{
			strike=0;ball=0;
			count++;
			System.out.print("���� �Է� : ");
			temp=sc.nextLine();
			
			if(temp.length()!=4)
			{
				System.out.println("���ڸ� 4�� �Է��ؾ��մϴ�.");
			}
			else
			{
				//�񱳹迭�� ������
				for(int i=0;i<4;i++)
				{
					input[i]=temp.charAt(i);
				}
				//����
				for(int i=0;i<4;i++)
				{
					for(int j=0;j<4;j++)
					{
						if(i==j && value[i]==input[j])
						{
							strike++;
							break;
						}
						else if(i!=j && value[i]==input[j])
						{
							ball++;
							break;
						}
					}
				}
				if(strike==4)
				{
					System.out.println("�����Դϴ�. "+count+"�� ����"); break;
				}
				else
				{
					System.out.println(strike+"��Ʈ����ũ "+ball+"�� �Դϴ�.");	
				}
			}
		}
	}
}
