package com.swing.event;

import java.awt.event.*;

import javax.swing.*;

public class MouseEventHandler implements MouseListener{

	@Override
	public void mouseClicked(MouseEvent e) {
//		JButton button = (JButton)e.getComponent();
//		button.setText("Clicked");
		System.out.println("Clicked Button" + e.getButton());
		System.out.println("���콺 ��ư ���ȴ� Ǯ��.");
	}

	@Override
	public void mousePressed(MouseEvent e) {
		System.out.println("���콺 ��ư ����.");
	}

	@Override
	public void mouseReleased(MouseEvent e) {
		System.out.println("���콺 ��ư Ǯ��.");
	}

	@Override
	public void mouseEntered(MouseEvent e) {
		System.out.println("Ŀ�� ��ư �� ����");
	}

	@Override
	public void mouseExited(MouseEvent e) {
		System.out.println("Ŀ�� ��ư �� Ż��");
	}

}
