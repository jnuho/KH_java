package com.loop.test;

import java.util.Scanner;

import com.loop.ForWhile;

public class Main {
	public static final Scanner CONSOLE = new Scanner(System.in);
	
	public static void main(String[] args) {
		int no = 0;
		ForWhile fw = new ForWhile();
		
		do {
			System.out.println("===== �ݺ��� loop �ǽ����� =====");
			System.out.println("1. ���� ���� ����ϱ�");
			System.out.println("2. �� ����ϱ�");
			System.out.println("3. �ܹ��� �޴� ����");
			System.out.println("4. ���ڿ����� ���� ���� ã��");
			System.out.println("5. ���α׷� ����");
			System.out.print("�޴� ��ȣ �Է� : ");
			no = CONSOLE.nextInt();

			switch(no) {
			case 1: fw.printStar1(); break;
			case 2: fw.printStar2(); break;
			case 3: fw.selectMenu(); break;
			case 4: fw.countInputCharacter(); break;
			case 5: System.out.println("���α׷��� �����մϴ�...");
				return;
			default: System.out.println("�߸��� �޴���ȣ �Դϴ�. �ٽ� �Է����ּ���.");
				break;
			}
			
		} while( no != 5);
	}
}
