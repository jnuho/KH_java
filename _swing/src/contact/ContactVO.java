package contact;

import java.io.Serializable;

//MVC ���Ͽ��� Model Ŭ����

public class ContactVO implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -9016607018982619689L;
	// ��� ����(�ʵ�)
	private String menuCategory;
	private int menuNo;
	private String menuName;
	private int menuPrice;

	// �⺻ ������, �Ű����� ������
	public ContactVO() {}
	
	
	
	public ContactVO(String menuCategory, String menuName, int menuPrice) {
		super();
		this.menuCategory = menuCategory;
		this.menuName = menuName;
		this.menuPrice = menuPrice;
	}



	public ContactVO(String menuCategory, int menuNo, String menuName,
			int menuPrice){
		this.menuCategory = menuCategory;
		this.menuNo = menuNo;
		this.menuName = menuName;
		this.menuPrice =menuPrice;
	}

	// getter/setters

	public String getmenuCategory() {
		return menuCategory;
	}
	public void setmenuCategory(String menuCategory) {
		this.menuCategory = menuCategory;
	}
	public int getMenuNo() {
		return menuNo;
	}

	public void setMenuNo(int menuNo) {
		this.menuNo = menuNo;
	}
	public String getMenuName() {
		return menuName;
	}
	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}
	public int getMenuPrice() {
		return menuPrice;
	}
	public void setMenuPrice(int menuPrice) {
		this.menuPrice = menuPrice;
	}

	public String toString() {
		String str = "�޴�����: " + menuCategory + "\t"+ "  | "
				+ "�޴���ȣ: " + menuNo + "\t" +"  | " 
				+ "�޴��̸�: " + menuName +"\t"+"|"
				+ "�޴����� ll: " + menuPrice;
		return str;
	}
} // end class ContactVO 