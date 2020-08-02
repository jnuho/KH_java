package board.view;

import java.util.Scanner;

import board.controller.BoardManager;

public class BoardMenu {
	private BoardManager controller = new BoardManager();
	
	public void mainMenu() {
		controller.loadListFile();
//		  >> ��������
//			1. �޴� ȭ�� �ݺ� ���� ó��
//			2. �ش� �޴� ��ȣ�� ���� BoardManager Ŭ���� �޼ҵ� ����
		int choice = -1;
		
		do {
			System.out.println("******* �Խñ� ���� ���α׷� *******");
			System.out.println("1. �Խñ� ����");		//BoardManager�� writeBoard() ����
			System.out.println("2. �Խñ� ��ü ����");		//		displayAllList()
			System.out.println("3. �Խñ� �Ѱ� ����");		//		displayBoard()
			System.out.println("4. �Խñ� ���� ����");		//		modifyTitle()
			System.out.println("5. �Խñ� ���� ����");		//		modifyContent()
			System.out.println("6. �Խñ� ����");		//		deleteBoard()
			System.out.println("7. �Խñ� �˻�");		//		searchBoard()
			System.out.println("8. ���Ͽ� �����ϱ�");		//		saveListFile()
			System.out.println("9. �����ϱ�");		// BookMenu �� sortSubMenu() ����
			System.out.println("0. ������");		//main() ���� ������
			System.out.print("�޴� ��ȣ ���� : ");
			choice = BoardManager.CONSOLE.nextInt();
			switch(choice) {
				case 1: controller.writeBoard(); break;
				case 2: controller.displayAllList(); break;
				case 3: controller.displayBoard(); break;
				case 4: controller.modifyTitle(); break;
				case 5: controller.modifyContent(); break;
				case 6: controller.deleteBoard(); break;
				case 7: controller.searchBoard(); break;
				case 8: controller.saveListFile(); break;
				case 9: this.sortSubMenu(); break;
				case 0: 
					controller.saveListFile();
					System.out.println("���α׷��� �����մϴ�.");
					return;
			}
		} while(choice != 0);
	}
	
	public void sortSubMenu() {
		int choice = -1;
		do {
			System.out.println("****** �Խñ� ���� �޴� ******");
			System.out.println("1. �۹�ȣ�� ������������");	//BookManager �� 	sortList(1, false) ����
			System.out.println("2. �۹�ȣ�� ������������");	//		sortList(1, true) ����
			System.out.println("3. �ۼ���¥�� ������������");	//		sortList(2, false) ����		
			System.out.println("4. �ۼ���¥�� ������������");	//		sortList(2, true) ����
			System.out.println("5. ������� ������������");	//		sortList(3, false) ����
			System.out.println("6. ������� ������������");	//		sortList(3, true) ����
			System.out.println("7. ���� �޴��� �̵�");		//return ó��
			System.out.print("�޴� ��ȣ : ");
			choice = BoardManager.CONSOLE.nextInt();
			switch(choice) {
				case 1: controller.sortList(1, false); break;
				case 2: controller.sortList(1, true); break;
				case 3: controller.sortList(2, false); break;
				case 4: controller.sortList(2, true); break;
				case 5: controller.sortList(3, false); break;
				case 6: controller.sortList(3, true); break;
				case 7:
					System.out.println("���� �޴��� �̵��մϴ�.");
					return;
			}
		} while(choice != 7);
	}
	
}
