package EX_Operate;
import java.util.Scanner;
public class EX1 {

		public static void main(String[] args)
		{
			int a,b,c;
			Scanner sc=new Scanner(System.in);
			System.out.print("����° ������ �Է��ϼ��� : ");
			a=sc.nextInt();
			System.out.print("�ι�° ������ �Է��ϼ��� : ");
			b=sc.nextInt();
			System.out.print("����° ������ �Է��ϼ��� : ");
			c=sc.nextInt();
			
			a++;
			b=(--a)+b;
			c=(a++)+(--b);
			
			System.out.println("a="+a+"   b="+b+"   c="+c);
			sc.close();
		}
}
