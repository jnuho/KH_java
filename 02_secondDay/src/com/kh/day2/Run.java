package com.kh.day2;

/* ���� Ŭ���� */
public class Run {
	public static void main(String[] args) {
		//���� ���� (method, class)

		//���� boolean
		//�޸�ram�ȿ� ���� �����ǰ� ���α׷� ������ �����
		boolean flag;
	
		//���Ϲ��� char
		char gender;

		//���ڿ� String
		String name;
		
		//���� byte, short, int, long
		byte data;
		short num;
		int i; // default data type
		long account;
	
		//�Ǽ�(�Ҽ����� �ִ� ����)
		float fnum;
		double dnum;

		//ȸ������ ���� ����
		String id;
		String password;
		String memberName;
		int age;
		char memberGender;
		
		String address;
		double memberHeight;
		double memberWeight;
		boolean isMarried;
		
		//�����̸����� ù��°�ڸ� ���� ����Ҽ� ����!
//		int 1num; ERROR!
		int num1; //OK
		float w3ight;
		//Ư�����ڴ� _ $ �� �����̸����� ����
		String name_member;
		int _height;
		int height_;
		String name$member;
		int $price;
		int $height;
		double weight$;

//		String name*member; ERROR
//		int *height ; //ERROR
//		double (weight);// EEROR

		/* �ѱۺ����̸� ����, �������� ����
		String ������;
		int ����; */
		
		//�����'Reserved' words are prevented
		
		new DeclareVariable().addValue();
	}
}