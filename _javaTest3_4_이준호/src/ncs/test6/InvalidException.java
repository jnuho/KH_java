package ncs.test6;

public class InvalidException extends Exception {
	private static final long serialVersionUID = 1L;

	int wrongChoice;

	public InvalidException(int wrongChoice) {
		super("�߸��� �����Է� �Դϴ�.");
		this.wrongChoice = wrongChoice;
	}
	
	public void showWrongChoice() {
		System.out.println(wrongChoice + "�� �߸��� �Է°��Դϴ�.");
	}
}
