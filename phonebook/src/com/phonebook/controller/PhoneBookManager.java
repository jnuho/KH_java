package com.phonebook.controller;

import java.util.HashSet;
import java.util.Iterator;

import com.phonebook.model.vo.PhoneInfo;
import com.phonebook.view.MainMenu;
import com.phonebook.view.MenuChoiceException;

public class PhoneBookManager {
//	static final int MAX_CNT = 5;
//	PhoneInfo[] infoStorage = new PhoneInfo[MAX_CNT];
	HashSet<PhoneInfo> infoStorage = new HashSet<PhoneInfo>();
	
	private static PhoneBookManager inst = null;
	
	public static PhoneBookManager createManagerInst() {
		if(inst == null)
			inst = new PhoneBookManager();
		return inst;
	}
	
	private PhoneBookManager() {}
	
	public void mainMenu() {
		new MainMenu().mainMenu();
	}
	
	public void inputData() {
//		if(PhoneInfo.getCurCnt() < MAX_CNT) {
//		}
//		else {
//			System.out.println("��ȭ��ȣ�ΰ� �� á���ϴ�...");
//		}
		try {
			PhoneInfo info = new MainMenu().readInfo();
			if(info!= null) {
//				infoStorage[PhoneInfo.getCurCnt()-1] = info;
				boolean isAdded = infoStorage.add(info);
				if (isAdded == true)
					System.out.println("�Է��� �Ϸ�Ǿ����ϴ�.");
				else
					System.out.println("�̹� ����� ������ �Դϴ�.(�̸� �ߺ�)");
			}
		}
		catch(MenuChoiceException e) {
			e.showWrongChoice();
			System.out.println("�߸��� ����޴��� �����߽��ϴ�.");
		}
	}
	
	public void searchData() {
		if(PhoneInfo.getCurCnt() == 0) {
			System.out.println("��ȭ��ȣ�ΰ� ����ֽ��ϴ�.");
			return;
		}
		System.out.print("ã������ �̸� �Է�: "); readNewLine();
		String name = MainMenu.CONSOLE.nextLine();
		PhoneInfo info = search(name);
		if(info == null)
			System.out.println("ã������ �����Ͱ� �����ϴ�.");
		else {
			info.showPhoneInfo();
			System.out.println("������ �˻��� �Ϸ�Ǿ����ϴ�.\n");
		}
		/*int idx = search(name);
		if(idx <0) {
			System.out.println("ã������ �����Ͱ� �����ϴ�.");
		}
		else {
			System.out.println("ã�� ������: ");
			infoStorage[idx].showPhoneInfo();
		}*/
	}
	
	public void deleteData() {
		if(PhoneInfo.getCurCnt() == 0) {
			System.out.println("��ȭ��ȣ�ΰ� ����ֽ��ϴ�.");
			return;
		}
		System.out.print("������� �̸� �Է�: "); readNewLine();
		String name = MainMenu.CONSOLE.nextLine();
		
		/*int idx = search(name);
		if(idx <0) {
			System.out.println("�����Ϸ��� �����Ͱ� �����ϴ�.");
		}
		else {
			for(int i =idx; i<PhoneInfo.getCurCnt()-1; i++)
				infoStorage[idx] = infoStorage[idx+1];

			infoStorage[PhoneInfo.getCurCnt() -1] = null;
			PhoneInfo.deleteCnt();
			System.out.println("�����͸� �����Ͽ����ϴ�.");
		}*/
		
		Iterator<PhoneInfo> itr = infoStorage.iterator();
		
		PhoneInfo info = null;
		while(itr.hasNext()) {
			info = itr.next();
			if(name.compareTo(info.getName()) == 0) {
				itr.remove();
				System.out.println("�����͸� �����Ͽ����ϴ�.");
				return;
			}

		}
		System.out.println("�����Ϸ��� �����Ͱ� �����ϴ�.");
	}
	
	private PhoneInfo search(String name) {
		Iterator<PhoneInfo> itr = infoStorage.iterator();

		PhoneInfo info = null;
		while(itr.hasNext()) {
			info = itr.next();
			if(name.compareTo(info.getName()) == 0)
				return info;
		}
		return null;

		/*for(int i =0; i<PhoneInfo.getCurCnt(); i++) {
			info = infoStorage[i];
			if(name.compareTo(info.getName()) == 0) {
				return i;
			}
		}
		return -1;*/
	}
	
	//remove new line character from buffer
	private void readNewLine() {
		if(MainMenu.CONSOLE.hasNextLine())
			MainMenu.CONSOLE.nextLine();
	}

}