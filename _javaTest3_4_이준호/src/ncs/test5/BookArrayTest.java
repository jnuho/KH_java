package ncs.test5;

public class BookArrayTest {
	public static void main(String[] args) {
		Book bArray [] = new Book[3];
		bArray[0] = new Book("�ڹ��� ����", "���ü�", 30000, "��������", .1);
		bArray[1] = new Book("�������� �ڹ�", "������", 29000, "������", .1);
		bArray[2] = new Book("��ü���� JAVA8", "�ݿ���", 30000, "�Ͻ�Ȩ", .1);
		
		for(int i=0; i<bArray.length; i++) {

			System.out.printf("%s, %s, %s, %d��, %d%% ����.\n���ε� ����: %d��\n",
				bArray[i].getTitle(), 
				bArray[i].getAuthor(), 
				bArray[i].getPublisher(), 
				bArray[i].getPrice(),
				(int)(bArray[i].getDiscountRate()*100),
				(int)(bArray[i].getPrice()*(1-bArray[i].getDiscountRate())));

			
		}
		
	}
}





