package com.gui.view;

import java.awt.BorderLayout;

import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFrame;

public class MainFrame extends JFrame {

	public static void main(String[] args) {
		new MainFrame().mainFrame();
	}
	public void mainFrame() {
		 setBounds(650, 300, 500, 500);
		 setLayout(new BorderLayout());

		 setIconImage(new ImageIcon("../../../components/images/search.png").getImage());
		 
		 JButton b1 = new JButton("����");
		 JButton b2 = new JButton("������");
		 JButton b3 = new JButton("�Ʒ�");
		 JButton b4 = new JButton("����");
		 JButton b5 = new JButton("�߾�");
		 
		 add(b1, "West");
		 add(b2, "East");
		 add(b3, "South");
		 add(b4, "North");
		 add(b5, "Center");
		 
		 b1.setBounds(10, 10, 300, 300);

		 setVisible(true);
		 setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
	}
}
