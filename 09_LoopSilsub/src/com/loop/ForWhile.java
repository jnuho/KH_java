package com.loop;

import com.loop.test.Main;

public class ForWhile {
	public void printStar1() {
		System.out.print("�������� �Է�: ");
		int num = Main.CONSOLE.nextInt();
		
		if(num > 0){
			String row = "";
			
			for(int i =1 ;i<=num; i++) {
				row = String.format("%"+i+"s", i).replace(' ', '*');
				System.out.println(row);
			}
		}
		else
			System.out.println("�߸��Է��ϼ̽��ϴ�... \n"
					+ "0���� ū ������ �Է��ϼ���.");
	}
	
	public void printStar2() {
		System.out.print("���� �Է�: ");
		int num = Main.CONSOLE.nextInt();
		String row = "";
		
		if(num > 0) {
			for(int i = 1 ;i<=num; i++) {
				row = String.format("%"+i+"s", ' ').replace(' ', '*');
				System.out.println(row);
			}
		}
		else if (num < 0){
			for(int i =num; i<=-1; i++) {
				row = String.format("%"+ (-i)+"s", ' ').replace(' ', '*');
				System.out.println(row);
			}
		}
		else { // num = 0
			System.out.println("��� ����� �����ϴ�.");
		}
	}
	
	public void selectMenu() {
		int no = 0;
		int count = 0;
		int sum = 0;
		String bill = "";
		
		char answer = '\u0000';
		
		do{
			System.out.println("*** �޴��� �����ϼ��� ***");
			System.out.println("�ܹ��� ***************");
			System.out.println("1. �Ұ�����	3500��");
			System.out.println("2. ġŲ����	3200��");
			System.out.println("�߰� ****************");
			System.out.println("3. ����Ƣ��	1000��");
			System.out.println("4. ġ�ƽ	400��");
			System.out.println("5. ������		2000��");
			System.out.println("����� ***************");
			System.out.println("6. �ݶ�		700��");
			System.out.println("7. ���̵�		1200��");
			System.out.println("8. Ŀ��		1000��");
			System.out.println("********************");
			System.out.print("�޴�����: ");
			
			no = Main.CONSOLE.nextInt();
			
			switch(no) {
			case 1:
				System.out.print("�Ұ����Ÿ� �����ϼ̽��ϴ�.\n" + "������ ? ");
				count = Main.CONSOLE.nextInt();
				System.out.println(count+ "�� �ֹ��ϼ̽��ϴ�.");
				sum += 3500*count;
				bill += "�Ұ����� : " + count + "�� - " + 3500*count +"��";
				break;
			case 2:
				System.out.print("ġŲ���Ÿ� �����ϼ̽��ϴ�.\n" + "������ ? ");
				count = Main.CONSOLE.nextInt();
				System.out.println(count+ "�� �ֹ��ϼ̽��ϴ�.");
				sum += 3200*count;
				bill += "ġŲ���� : " + count + "�� - " + 3200*count +"��";
				break;
			case 3:
				System.out.print("����Ƣ���� �����ϼ̽��ϴ�.\n" + "������ ? ");
				count = Main.CONSOLE.nextInt();
				System.out.println(count+ "�� �ֹ��ϼ̽��ϴ�.");
				sum += 1000*count;
				bill += "����Ƣ�� : " + count + "�� - " + 1000*count +"��";
				break;
			case 4:
				System.out.print("ġ�ƽ�� �����ϼ̽��ϴ�.\n" + "������ ? ");
				count = Main.CONSOLE.nextInt();
				System.out.println(count+ "�� �ֹ��ϼ̽��ϴ�.");
				sum += 400*count;
				bill += "ġ�ƽ : " + count + "�� - " + 400*count +"��";
				break;
			case 5:
				System.out.print("�����带 �����ϼ̽��ϴ�.\n" + "������ ? ");
				count = Main.CONSOLE.nextInt();
				System.out.println(count+ "�� �ֹ��ϼ̽��ϴ�.");
				sum += 2000*count;
				bill += "������ : " + count + "�� - " + 2000*count +"��";
				break;
			case 6:
				System.out.print("�ݶ�  �����ϼ̽��ϴ�.\n" + "������ ? ");
				count = Main.CONSOLE.nextInt();
				System.out.println(count+ "�� �ֹ��ϼ̽��ϴ�.");
				sum += 700*count;
				bill += "�ݶ� : " + count + "�� - " + 700*count +"��";
				break;
			case 7:
				System.out.print("���̵带 �����ϼ̽��ϴ�.\n" + "������ ? ");
				count = Main.CONSOLE.nextInt();
				System.out.println(count+ "�� �ֹ��ϼ̽��ϴ�.");
				sum += 1200*count;
				bill += "���̵� : " + count + "�� - " + 1200*count +"��";
				break;
			case 8:
				System.out.print("Ŀ�Ǹ� �����ϼ̽��ϴ�.\n" + "������ ? ");
				count = Main.CONSOLE.nextInt();
				System.out.println(count+ "�� �ֹ��ϼ̽��ϴ�.");
				sum += 1000*count;
				bill += "Ŀ�� : " + count + "�� - " + 1000*count +"��";
				break;
			default:
				System.out.println("�߸��� �޴���ȣ �Դϴ�...");
				break;
			}
			System.out.print("�߰� �ֹ��Ͻðڽ��ϱ�?(y/n) : ");
			answer = Character.toLowerCase(Main.CONSOLE.next().charAt(0));			
			bill = sum>0 && answer=='y' ? bill+"\n": bill;
			
		}while(answer == 'y');
		
		System.out.println("\n* �ֹ��Ͻ� ������ ������ �����ϴ�. *");
		System.out.println("-----------------------------------------------");
		System.out.println(bill);
		System.out.println("-----------------------------------------------");
		System.out.println("�� ���� : " + sum + "��\n");
	}
	
	public void countInputCharacter(){
		if(Main.CONSOLE.hasNextLine())
			Main.CONSOLE.nextLine();
		
		System.out.print("���ڿ� �Է� : ");
		String str = Main.CONSOLE.nextLine();
		
		char[] chars = str.toCharArray();
		for(char c : chars) {
			if(!Character.isLetter(c)) {
				System.out.println("�����ڰ� �ƴմϴ�.");
				return;
			}
		}
		
		System.out.print("���� �Է� : ");
		char ch = Main.CONSOLE.next().charAt(0);
		int count = 0;
		
		for(int i =0; i<str.length(); i++) {
			if(str.charAt(i) == ch)
				count++;
		}
		
		System.out.println("���Ե� ���� : " + count + " ��");
	}
}
