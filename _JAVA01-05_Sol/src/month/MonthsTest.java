package month;

import java.util.Scanner;

public class MonthsTest {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		do {
			System.out.print("���� �Է��ϼ��� (1~12): ");
			int month = sc.nextInt();

			if(month <1 || month >12) {
				System.out.println("���� �ٽ� �Է����ּ���.");
				continue;
			}
			System.out.println("�Է¹��� ��: " + month + "��");
			int lastDay = new Months().getDays(month);
			System.out.println("����������: " + lastDay +"��");
			break;
		} while(true);
	}
}
