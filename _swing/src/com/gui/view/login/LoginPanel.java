package com.gui.view.login;

import java.awt.Color;
import java.awt.FlowLayout;

import javax.swing.JButton;
import javax.swing.JCheckBox;
import javax.swing.JDialog;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;

import com.gui.eventcontroller.ButtonEvent;

public class LoginPanel extends JPanel {
	public LoginPanel(JFrame main) {
		setBounds(1,1, 150, 500);
		setLayout(new FlowLayout(FlowLayout.CENTER));
		
		JLabel name = new JLabel("�̸�");
		add(name);
		JLabel age = new JLabel("����");
		add(age);
		JLabel gender = new JLabel("����");
		add(gender);
		
		JCheckBox check1 = new JCheckBox("���ǰ���");
		check1.setBackground(Color.ORANGE);
		add(check1);
		JCheckBox check2 = new JCheckBox("��Ʃ��");
		check2.setBackground(Color.ORANGE);
		add(check2);
		JCheckBox check3 = new JCheckBox("����");
		check3.setBackground(Color.ORANGE);
		check1.addMouseListener(new ButtonEvent());

		add(check3);
		
		JDialog info = new JDialog(main, "�ȳ� ���� ���̾� â�̾�", false);
		info.setBounds(500, 500, 140, 100);
		info.setLayout(new FlowLayout());
		info.add(new JLabel("�˾� �޽��� �¾ƿ�~!!"));
		info.add(new JButton("Ȯ��"));
		info.setVisible(true);

		setBackground(Color.ORANGE);
		setVisible(true);
	}
}
