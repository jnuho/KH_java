package EX_Operate;

import java.util.Scanner;

public class EX6 {

	public static void main(String[] args)
	{
		int age;
		Scanner sc=new Scanner(System.in);
		System.out.print("������ ���̸� �Է��ϼ��� : ");
		age=sc.nextInt();
	
		System.out.println(age>19?"�����Դϴ�. ��������":"�̼������Դϴ�. ��Ŀ��������");
		sc.close();
	}
	
}

