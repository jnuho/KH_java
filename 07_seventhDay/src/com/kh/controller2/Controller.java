package com.kh.controller2;

import java.util.Scanner;

public class Controller {
	public static final Scanner CONSOLE = new Scanner(System.in);

	public void exForTest() {
		for(int i =0 ;i<5; i++) {}
		
		int num = 0;
		for(;num<10; num++) {
			System.out.println("print " + num);
		}
		
//		infinite loop
//		for(;;) {}

		int num2 = 10;
		for(; num2==10;) {
			num++;
			if(num==20) num2 = 20;
		}
//		for(int n= 0; n< 10; num+=2, n++) {}
	}
	
	public void whileTest() {
		int i = 0;
		/* while */
		while(i++ < 10) {
			/*1���� 10���� ���ڸ� ����ϼ���. */
//			System.out.print(i+ " ");
			/*10���� 0���� ���ڸ� ����ϼ���.*/
//			System.out.print((11-i) + " ");
			/* 1���� 10���� Ȧ���� ����ϼ���. */
			if(i %2== 1) System.out.print(i + " ");
		}

		System.out.print("\n������ �Է��ϼ���: ");
		int n = CONSOLE.nextInt(); 
		i = 0;
		int sum = 0;
		while(i++ <n) {
			/* �Է� ���� ���������� Ȧ���� ����ϼ��� */
			if(i %2 == 1)
				System.out.print(i + " ");
			/* �Է� ���� ���������� Ȧ���� ���� ����ϼ���. */
			sum += i;
			i++;
		}
		System.out.println("\n1~" + n + " ���� Ȧ���� �� : " + sum);
		
		/* do~while */
		int num2 = 3;
		do {
			System.out.println("�̰��� ����˴ϱ�?");
		} while(num2++ < 5);
	}
	
	public void stringMethod() {
		boolean flag = true;
		int count = 0;
		char answer;

		while(flag) {
			count = 0;
			System.out.print("���ڿ��� �Է��ϼ���: ");
			String str = CONSOLE.nextLine().toLowerCase();
			System.out.print("���ڿ��� �Է��ϼ���: ");
			char ch = CONSOLE.nextLine().charAt(0);
			
			for(int i =0 ;i<str.length(); i++)
				if(str.charAt(i) == ch)
					count++;
			System.out.println("���Ե� ���� : " + count);

			System.out.print("��� �Ͻðڽ��ϱ�? (Y/N) ");
			answer = CONSOLE.nextLine().charAt(0);
			if(answer =='N' || answer =='n') {
				flag = false;
				System.out.println("���α׷��� �����մϴ�.");
			}
		}
	}
	
	public void breakTest() {
		for(int i =0 ;; i++) {
			if(i == 10) {
				System.out.println("Break for statement!!");
				break;
			}
		}
		
		boolean flag = true;

		while(flag) {
			System.out.println("===�����ֹ����α׷�===");
			System.out.println("1.������");
			System.out.println("2.�ᳪ������");
			System.out.println("3.����");
			System.out.println("4.ȸ����");
			System.out.println("5.������ġ");
			System.out.print("�޴� ��ȣ:  ");
			int choice = CONSOLE.nextInt(); CONSOLE.nextLine();
			switch(choice) {
				case 1: System.out.println("������ �ֹ��Ϸ�"); break;
				case 2: System.out.println("�ᳪ������ �ֹ��Ϸ�"); break;
				case 3: System.out.println("���� �ֹ��Ϸ�"); break;
				case 4: System.out.println("ȸ���� �ֹ��Ϸ�"); break;
				case 5: System.out.println("������ġ �ֹ��Ϸ�"); break;
				case 0: System.out.println("���α׷��� �����մϴ�."); break;
				default: System.out.println("�ֹ��޴��� �ٽ������ּ��� (1~5): "); break;
			}
			if (choice == 0) break;
		}
	}

	public void enrollMembers() {
		/* ȸ�� �� */
		System.out.print("�Է��� �� ȸ�� �� : ");
		int enrollNum = CONSOLE.nextInt(); CONSOLE.nextLine();
		
		/* ȸ������  */
		String name = "", location = "", phone = "";
		int age =0;
		double height = 0, weight = 0;

		String personInfo = "";

		/* �հ� ������ */
		int sumAge = 0;
		double sumHeight = 0;
		double sumWeight = 0;
	
		for(int i =0; i<enrollNum; i++) {
			System.out.print("�̸�: ");
			name = CONSOLE.nextLine();
			System.out.print("����: ");
			age = CONSOLE.nextInt(); CONSOLE.nextLine();
			System.out.print("��°�: ");
			location = CONSOLE.nextLine();
			System.out.print("Ű: ");
			height = CONSOLE.nextDouble();
			System.out.print("������: ");
			weight = CONSOLE.nextDouble(); CONSOLE.nextLine();
			System.out.print("��ȭ��ȣ: ");
			phone = CONSOLE.nextLine();
			
			sumAge += age;
			sumHeight += height;
			sumWeight += weight;
			
			personInfo +=
					name + "\t" + age +"��\t" + location
					+ "\t" + height+ "cm\t" + weight + "kg\t"
					+ phone + "\n";
		}

		System.out.println("===========����ȸ��==========");
		System.out.println(personInfo);
		System.out.printf("��ճ���: %d��/ "
				+ "��� Ű: %.2fcm / ��� ������: %.2fkg\n",
				sumAge/enrollNum, sumHeight/enrollNum, 
				sumWeight/enrollNum);
	}
	
	public void storeElectronics() {
		boolean flag = true;
		int count = 0;

		String id = "", kind = "", name = "";
		int price = 0;
		int sumPrice = 0;
		String productInfo = "";
		
		while(flag) {
			System.out.print("��ǰ id: ");
			id = CONSOLE.nextLine();
			System.out.print("��ǰ ����: ");
			kind = CONSOLE.nextLine();
			System.out.print("��ǰ ��: ");
			name = CONSOLE.nextLine();
			System.out.print("��ǰ ����: ");
			price = CONSOLE.nextInt(); CONSOLE.nextLine();
			
			productInfo += id + "\t" + kind + "\t" + name
					+ "\t" +  price +"����\n";
			count++;
			sumPrice += price;
			
			System.out.print("��ǰ�� �� �Է��Ͻðڽ��ϱ�? (Y/N): ");
			if(Character.toLowerCase(CONSOLE.nextLine().charAt(0)) == 'n')
				flag =false;
		}
		System.out.println("====== �����ǰ(" +count + ")======");
		System.out.println(productInfo);
		System.out.println("��ǰ ������ ���: " + sumPrice/count);
	}

	public void huntMonster() {
		int monsterNum = 0;
		int exp = 0;

		while(true) {
			System.out.println("0. ��ɽ��� 1. ��ũ��� 2. ���� 3. ������ 99.������");
			System.out.print("����: ");
			int choice = CONSOLE.nextInt(); CONSOLE.nextLine();

			System.out.println("����� �����մϴ�.");
			System.out.println("��ũ��ɿϷ� +1 exp");
			System.out.println("�� ��� �Ϸ� +15exp");
			System.out.println("����� ���ƽ��ϴ�.");
			System.out.println("����� ���� ���� "
					+ monsterNum + "����, ȹ���� ����ġ�� 16exp�Դϴ�.");
			break;
		}
	}

	public void testRandom() {
		for(int i =0; i<5; i++) {
			//random*10 == 0~9������ ������ ��
			System.out.println((int)(Math.random()*10 + 1));
			//random*60 == 1~60
			System.out.println((int)(Math.random()*60)+ 1);
		}
	}
	
	public void guessRandom() {
		int randNum = (int)(Math.random()*100 + 1);

		int count = 0;
		int num = 0;

		while(true) {
			System.out.print("1~100 ���� ������ �Է��ϼ���: ");
			num = CONSOLE.nextInt();

			count++;
			if(num == randNum) {
				System.out.println("�Է��Ͻ� " + num + "��"
						+ "������ ��ġ�մϴ�!!!");
				break;
			}
			else if( num < randNum) {
				System.out.println("�Է��Ͻ� " + num + "��"
						+ "�������� �۽��ϴ�.");
			}
			else {
				System.out.println("�Է��Ͻ� " + num + "��"
						+ "�������� Ů�ϴ�.");
			}
		}
		System.out.println("������ ���߱� ���� " 
			+ count + "ȸ �õ��Ͽ����ϴ�.");
	}
	
	public void checkPrime() {
		int num = 0;
		int count = 0;

		boolean resume = false;

		do{
			System.out.print("2���� ū ������ �Է��ϼ���: ");
			num = CONSOLE.nextInt(); CONSOLE.nextLine();
			count = 0;
		
			if (num >= 2) {
				for(int i = 1; i <=num; i++) {
					if (num%i == 0)
						count++;
				}
			}
			else {
				System.out.println("���ڸ� �߸� �Է��ϼ̽��ϴ�.");
			}

			if(count >2) {
				System.out.println("�Ҽ��� �ƴմϴ�.");
			}
			else {
				System.out.println("�Ҽ��Դϴ�.");
			}

			System.out.print("���α׷��� ��� ���� �Ͻðڽ��ϱ�? (y/n): ");
			resume = 
				CONSOLE.nextLine().toLowerCase().equals("y");
			System.out.println();
		} while(resume);

		System.out.println("���α׷��� �����մϴ�...");
	}

	public void computeChange() {
		System.out.print("������ �ݾ��� �Է��ϼ���: ");
		int yourMoney = CONSOLE.nextInt();
		System.out.print("��ǰ ������ �Է��ϼ���: ");
		int price = CONSOLE.nextInt();

		int moneyToReturn = yourMoney - price;

		int[] billSize = {50000, 10000, 5000, 1000, 500, 100, 50, 10};
		int remainder = moneyToReturn;
		int billNum = 0;

		System.out.println("====================");
		for(int i =0 ;i<billSize.length; i++) {
			billNum = remainder / billSize[i];

			System.out.println(billSize[i] + "���� ���� " + billNum + "��");
			remainder %= billSize[i];
		}
		System.out.println("====================");
		System.out.println("�Ž�����: " + moneyToReturn +"��");
	}
	
	public void cal() {
		System.out.print("������ �ݾ��� �Է��ϼ���: ");
		int yourMoney = CONSOLE.nextInt();
		System.out.print("��ǰ ������ �Է��ϼ���.");
		int price = CONSOLE.nextInt();

		int moneyToReturn = yourMoney - price;
	}
	
	public void silsub() {
		System.out.print("���ڿ� �Է�: ");
		String str = "";
	}
}
