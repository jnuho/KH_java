package EX_Operate;
import java.util.Scanner;
public class EX4 {

	public static void main(String[] args)
	{
		Scanner sc=new Scanner(System.in);
		System.out.print("ù��° �Է� : ");
		int a= sc.nextInt();
		System.out.print("�ι�° �Է� : ");
		int b= sc.nextInt();
		System.out.println(a+"!="+b+"&&"+a+"<"+b+"�� "+(a!=b&&a<b)+"�̴�.");
		System.out.println(a+"<"+b+"||"+a+"=="+b+"�� "+(a<b||a==b)+"�̴�.");
		System.out.println(a+">"+b+"&&"+a+"!="+b+"�� "+(a>b&&a!=b)+"�̴�.");
		System.out.println(a+">"+b+"||"+a+"=="+b+"�� "+(a>b||a==b)+"�̴�.");
		sc.close();
	}
}
