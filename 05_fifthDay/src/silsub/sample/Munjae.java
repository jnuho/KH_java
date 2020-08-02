package silsub.sample;

import java.util.Scanner;

public class Munjae {
	public static final Scanner CONSOLE = new Scanner(System.in);

	public void test1() {

		System.out.print("��������: ");
		int kor = CONSOLE.nextInt();
		System.out.print("��������: ");
		int eng = CONSOLE.nextInt();
		System.out.print("��������: ");
		int math = CONSOLE.nextInt(); CONSOLE.nextLine();

		int sum = kor + eng + math;
		double avg = sum / 3.0;

		boolean overForty = kor >= 40
						 && eng >= 40
						 && math >= 40;
		System.out.println("�հ�: " + sum);
		System.out.printf("���: %.2f\n", avg);

		if(overForty && avg >= 60)
			System.out.println("�հ� �Դϴ�.");
		else
			System.out.println("���հ� �Դϴ�.");
	}
	
	public void test2() {
		showMenu();

		int choice = CONSOLE.nextInt(); CONSOLE.nextLine();

		switch(choice) {
		case 1:
			System.out.println("�Է¸޴��� ���õǾ����ϴ�.");
			break;
		case 2:
			System.out.println("�����޴��� ���õǾ����ϴ�.");
			break;
		case 3:
			System.out.println("��ȸ�޴��� ���õǾ����ϴ�.");
			break;
		case 4:
			System.out.println("�����޴��� ���õǾ����ϴ�.");
			break;
		case 7:
			System.out.println("���α׷��� ����˴ϴ�.");
			break;
		default:
			System.out.println("��ȣ�� �߸� �Է� �Ǿ����ϴ�.\n�ٽ� �Է��Ͻʽÿ�.");
		}
	}
	
	public void showMenu() {
		System.out.println("***�ʱ� �޴�***");
		System.out.println("1. �Է�");
		System.out.println("2. ����");
		System.out.println("3. ��ȸ"); 
		System.out.println("4. ����");
		System.out.println("7. ����");
		System.out.print("�޴���ȣ �Է�: ");
	}
	
	public void test3() {
		System.out.print("���� �Է�: ");
		int num = CONSOLE.nextInt();
		if(num > 0)
			System.out.println("�����.");
		else if (num < 0)
			System.out.println("������.");
		else
			System.out.println("0�̴�.");
	}

	public void test4() {
		System.out.print("���� �Է�: ");
		int num = CONSOLE.nextInt();
		if(num % 2 == 0)
			System.out.println("¦����.");
		else
			System.out.println("Ȧ����.");
	}
	
	public void inputTest() {
		
		System.out.print("�̸�: ");
		String name = CONSOLE.next();
		System.out.print("����: ");
		int age = CONSOLE.nextInt();
		System.out.print("Ű: ");
		double height = CONSOLE.nextDouble();
		
		if (name != null
				&& name.length() > 0 
				&& age > 0 
				&& height >0) {
			System.out.println("�̸�: " + name);
			System.out.println("����: " + age);
			System.out.println("Ű: " + height);
			System.out.printf("Ȯ��: %s�� ���̴� %d���̰�, Ű�� %.2f cm �̴�.", 
					name, age, height);
		}
		else {
			System.out.println("�̸��� �߸��Է� �߽��ϴ�.");
		}
	}
	public void test6() {
		System.out.print("����1: ");
		int n1= CONSOLE.nextInt();

		System.out.print("����2: ");
		int n2 = CONSOLE.nextInt();
	
		if (n1 > 0 && n2 > 0) {
			System.out.println(n1 + " + " + n2 + " = " + (n1+n2));
			System.out.println(n1 + " - " + n2 + " = " + (n1-n2));
			System.out.println(n1 + " * " + n2 + " = " + (n1*n2));
			System.out.println(n1 + " / " + n2 + " = " + (n1/n2));
			System.out.println(n1 + " % " + n2 + " = " + (n1%n2));
		}
		else {
			System.out.println("������ �߸� �Է� �ϼ̽��ϴ�."); 
		}
	}

	public void test7() {
		System.out.print("����: ");
		int score = CONSOLE.nextInt();

		String grade = "";

		if (score > 100 || score <0) {
			System.out.println("������ �߸��Է� �ϼ̽��ϴ�.");
		}
		else if(score >= 90) {
			grade = "A";
			if(score >= 95) grade += "+";
		}
		else if (score >=80) {
			grade = "B";
			if(score>=85) grade += "+";
		}
		else if(score >=70) {
			grade ="C";
			if (score>=75) grade += "+";
		}
		else if (score >=60) {
			grade = "D";
			if (score>=65) grade += "+";
		}
		else { // 0~59
			grade = "F";
		}
		
		System.out.printf("����: %d\t����: %s\n", score, grade);
	}
}