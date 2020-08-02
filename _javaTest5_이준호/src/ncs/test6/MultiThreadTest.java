package ncs.test6;

public class MultiThreadTest {
	public static void main(String[] args) {
		Data data = new Data(); //����������
		Thread putThread = new Provider(data);
		Thread getThread = new Customer(data);
		// data �� �����ϴ� Provider �� Customer ��ü ���� : Thread ��ü ������
		// ������ ����
		putThread.start();
		getThread.start();	
		
		try {
			putThread.join();
			getThread.join();
		} catch(InterruptedException e) {
			e.printStackTrace();
		}

		System.out.println("Main Thread ends...");
	}
}
