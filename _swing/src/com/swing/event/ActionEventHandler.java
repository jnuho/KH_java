package com.swing.event;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class ActionEventHandler implements ActionListener {

	@Override
	public void actionPerformed(ActionEvent e) {
		System.out.println(e.getActionCommand());
	}
}
