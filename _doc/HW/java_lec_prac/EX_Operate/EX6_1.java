package EX_Operate;

import java.util.Scanner;

public class EX6_1 {

	public static void main(String[] args) {
		int age;
		String gender;
		Scanner sc=new Scanner(System.in);
		System.out.print("������ ���̸� �Է��ϼ��� : ");
		age=sc.nextInt();
		sc.nextLine();
		System.out.print("������ ������ �Է��ϼ���(��,��) : ");
		gender=sc.nextLine();
	
		System.out.println(age>19? gender.equals("��")?"�����Դϴ�. �������� ������":"�����Դϴ�. ���������� ������":"�̼������Դϴ�. ��Ŀ��������");
		//System.out.println(age>19? gender.charAt(0)=='��'?"�������� ������":"�������� ������":"�̼������Դϴ�. ��Ŀ��������");
		sc.close();
	}

}
