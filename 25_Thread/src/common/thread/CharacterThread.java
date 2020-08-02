package common.thread;

import com.thread.controller.Person;

public class CharacterThread extends Person implements Runnable {

	public CharacterThread() {
		super("ȫ", 100);
	}

	public CharacterThread(String name, int hp) {
		super(name, hp);
	}

	@Override
	public void run() {
		for(;;) {
			int damage = (int)(Math.random() * 25) + 1;
			super.setHp(Math.max(super.getHp() - damage, 0));
			System.out.println(super.getName() + " : " + super.getHp());
			if(super.getHp() == 0) {
				System.out.println(super.getName() + " ĳ���� ���");
				break;
			}
			try {
				Thread.sleep(200);
			} catch(InterruptedException e) {
				e.printStackTrace();
			}
		}
		System.out.println(super.getName() + " ������ ��");
	}	
}
