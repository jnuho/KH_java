package EX_Operate;
import java.util.Scanner;
public class EX2 {
	public static void main(String[] args)
	{
		int a,b;
		Scanner sc=new Scanner(System.in);
		System.out.print("�R��° ���� �Է� : ");
		a=sc.nextInt();
		System.out.print("�ι�° ���� �Է� : ");
		b=sc.nextInt();
		
		System.out.println("���ϱ� ��� : "+a+"+"+b+"="+(a+b));
		System.out.println("���� ��� : "+a+"-"+b+"="+(a-b));
		System.out.println("������ ��� : "+a+"/"+b+"="+(a/b));
		System.out.println("������ ��� : "+a+"/"+b+" �������� "+(a%b));
		System.out.println("���ϱ� ��� : "+a+"*"+b+"="+(a*b));
		sc.close();
	}
}
