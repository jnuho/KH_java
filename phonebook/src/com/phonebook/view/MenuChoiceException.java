package com.phonebook.view;

public class MenuChoiceException extends Exception {
	int wrongChoice;

	public MenuChoiceException(int wrongChoice) {
		super("�߸��� �޴����� �Դϴ�.");
		this.wrongChoice = wrongChoice;
	}
	
	public void showWrongChoice() {
		System.out.println(wrongChoice + "�� �ش��ϴ� �޴��� �����ϴ�.");
	}
}
