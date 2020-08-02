package com.phonebook.view;

import java.util.Scanner;

import com.phonebook.controller.PhoneBookManager;
import com.phonebook.model.vo.PhoneCompanyInfo;
import com.phonebook.model.vo.PhoneInfo;
import com.phonebook.model.vo.PhoneUnivInfo;

interface INIT_MENU{
	int INPUT=1, SEARCH=2, DELETE=3, EXIT=4;
}

interface INPUT_SELECT{
	int NORMAL=1, UNIV=2, COMPANY=3;
}

public class MainMenu {
	public static final Scanner CONSOLE = new Scanner(System.in);
	PhoneBookManager mgr = PhoneBookManager.createManagerInst();

	public void mainMenu() {
		int choice = -1;
		do {
			try {
				System.out.println("�����ϼ���...");
				System.out.println("1. ������ �Է�");
				System.out.println("2. ������ �˻�");
				System.out.println("3. ������ ����");
				System.out.println("4. ���α׷� ����");
				System.out.print("����: ");
				choice = CONSOLE.nextInt();
				
				if(choice < INIT_MENU.INPUT || choice > INIT_MENU.EXIT)
					throw new MenuChoiceException(choice);
				
				switch(choice) {
					case INIT_MENU.INPUT: mgr.inputData(); break;
					case INIT_MENU.SEARCH: mgr.searchData(); break;
					case INIT_MENU.DELETE: mgr.deleteData(); break;
					case INIT_MENU.EXIT: 
						System.out.println("���α׷��� �����մϴ�...");
						return;
					default:
						System.out.println("�߸� �Է��ϼ̽��ϴ�...");
						break;
				}
			}
			catch(MenuChoiceException e) {
				e.showWrongChoice();
				System.out.println("�޴� ������ ó������ �ٽ� �����մϴ�.\n");
			}
		}while(choice != 4);
	}
	
	public PhoneInfo readInfo() throws MenuChoiceException{
		System.out.println("�������Է��� �����մϴ�.");
		System.out.println("1. �Ϲ� 2. ���� 3. ȸ��.");
		System.out.print("�Է�: ");
		int choice = CONSOLE.nextInt(); readNewLine();
		PhoneInfo info = null;

		//exception
		if(choice <INPUT_SELECT.NORMAL || choice > INPUT_SELECT.COMPANY)
			throw new MenuChoiceException(choice);
		
		switch(choice) {
			case INPUT_SELECT.NORMAL: info = readFriendInfo(); break;
			case INPUT_SELECT.UNIV: info = readUnivFriendInfo(); break;
			case INPUT_SELECT.COMPANY: info = readCompanyFriendInfo(); break;
			default:
				System.out.println("�߸��� �޴��� �Է��ϼ̽��ϴ�. �ָ޴��� ���ư��ϴ�.");
				break;
		}
		return info;
	}
	
	public PhoneInfo readFriendInfo() {
		System.out.println("===== �Ϲ�ģ�� ������ �Է� =====");
		System.out.print("  �̸� : ");
		String name = MainMenu.CONSOLE.nextLine();
		System.out.print("  ��ȭ : ");
		String phone = MainMenu.CONSOLE.nextLine();

		PhoneInfo info = new PhoneInfo(name, phone);
		return info;
	}
	
	public PhoneInfo readUnivFriendInfo() {
		System.out.println("===== ����ģ�� ������ �Է� =====");
		System.out.print("  �̸� : ");
		String name = MainMenu.CONSOLE.nextLine();
		System.out.print("  ��ȭ : ");
		String phone = MainMenu.CONSOLE.nextLine();
		System.out.print("  ���� : ");
		String major = MainMenu.CONSOLE.nextLine();
		System.out.print("  �г� : ");
		int year = MainMenu.CONSOLE.nextInt();

		PhoneUnivInfo info = new PhoneUnivInfo(name, phone, major, year);
		return info;
	}
	
	public PhoneInfo readCompanyFriendInfo() {
		System.out.println("===== ȸ��ģ�� ������ �Է� =====");
		System.out.print("  �̸� : ");
		String name = MainMenu.CONSOLE.nextLine();
		System.out.print("  ��ȭ : ");
		String phone = MainMenu.CONSOLE.nextLine();
		System.out.print("  ȸ�� : ");
		String company = MainMenu.CONSOLE.nextLine();
		
		PhoneCompanyInfo info = new PhoneCompanyInfo(name, phone, company);
		return info;
	}

	//remove newline from buffer
	private void readNewLine() {
		if(CONSOLE.hasNextLine())
			CONSOLE.nextLine();
	}
}
