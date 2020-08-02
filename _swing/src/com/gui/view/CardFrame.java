package com.gui.view;

import java.awt.CardLayout;
import java.awt.Color;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;

public class CardFrame extends JFrame {
	public static boolean flag=true;
	public CardFrame() {

		setBounds(100,100,500,500);
		CardLayout card=new CardLayout();
		setLayout(card);
		
		JPanel p1=new JPanel();
		JPanel p2=new JPanel();
		JPanel p3=new JPanel();
		p1.setName("1");
		p2.setName("2");
		p3.setName("3");
		
		//�гο� ���� �߰�
		p1.setBackground(Color.yellow);
		p2.setBackground(Color.RED);
		p3.setBackground(Color.CYAN);
		//�гο� ������Ʈ �߰�
		p1.add(new JLabel("p1"));
		p2.add(new JLabel("p2"));
		p3.add(new JLabel("p3"));
		
		//�����ӿ� �г��߰�
		add(p1, "1");
		add(p2, "2");
		add(p3, "3");
		
		
		
		p1.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				String name=((JPanel)e.getSource()).getName();
				if(Integer.parseInt(name)==1) {
					card.next(p2.getParent());
					flag=false;
				}
			}
		});
		p2.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				String name=((JPanel)e.getSource()).getName();
				if(Integer.parseInt(name)==2&&flag==false) {
					card.next(p2.getParent());
				}
				if(Integer.parseInt(name)==2&&flag==true){
					card.previous(p2.getParent());
				}
			}
		});
		p3.addMouseListener(new MouseAdapter() {
			
			@Override
			public void mouseClicked(MouseEvent e) {
				String name=((JPanel)e.getSource()).getName();
				if(Integer.parseInt(name)==3){
					flag=true;
					card.previous(p2.getParent());
				}
			}
		});
				
		
		setDefaultCloseOperation(3);
		setVisible(true);
	}
	
}

