package ncs.test2;

public class StringTest {
	public static void main(String[] args) {
		String str = "1.22,4.12,5.93,8.71,9.34";
		double data[]= new double[5];
		double sum = 0;
		// str���� �����͸� �и��Ѵ�.
		String[] st = str.split(",");

		int count=0;
		double temp = 0;
		for(String s : st){ //for~each �� ����Ѵ�.
		// �迭�� �Ǽ� �����͸� �ִ´�.
			temp = Double.valueOf(s);
			data[count++] = temp;

			sum+= temp;
		//�迭 �������� ���� ���Ѵ�.
		}
		System.out.printf("�հ�: %.3f\n", sum);
		System.out.printf("���: %.3f", sum/count);
		// ��� ���� ��� �Ѵ�.
	}
}
