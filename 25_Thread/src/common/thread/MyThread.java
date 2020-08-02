package common.thread;

public class MyThread extends Thread {
	private String name;

	public MyThread(String name) {
		super();
		this.name = name;
	}
	
	//����� thread ��ü�� �ִ� run �޼ҵ带 ����!

	@Override
	public void run() {
		for(int i =0; i<10; i++) {
			System.out.println(name + " " + i);
			try {
				sleep(500);
			} catch(InterruptedException e) {
				e.printStackTrace();
			}
		}
		System.out.println(name + "������ ��.");
	}
}
