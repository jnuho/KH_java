package ncs.test4;

public class ProductTest {
	public static void main(String[] args) {
//		main �Լ� �ȿ��� Product
//		��ü �ʱⰪ�� Ű����� �Է�
		Product p1 = new Product("������ S7", 563500, 3);
		System.out.println(p1.information());
		System.out.println("�� ���� ���� : " + p1.getQuantity() * p1.getPrice() +" ��");
	}
}
