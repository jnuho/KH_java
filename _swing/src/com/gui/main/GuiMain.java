package com.gui.main;

import javax.swing.JFrame;

public class GuiMain extends JFrame {
	public GuiMain() {
		super("MyMeo");
		//������ â�� ũ�� ����
		/*setSize(200, 200);
		setLocation(600, 700);*/

		//������ â�� ��ġ�� ũ�⸦ �ѹ��� ���� : setSize() + setLocation()
		setBounds(600, 200, 200, 200);
        
		setResizable(false);
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setVisible(true);
	}

	public static void main(String[] args) {
		new GuiMain();
	}
}
