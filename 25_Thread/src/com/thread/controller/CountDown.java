package com.thread.controller;

import java.awt.Font;
import java.util.Iterator;
import java.util.Set;
import java.util.TreeSet;

import javax.swing.ImageIcon;
import javax.swing.JFrame;
import javax.swing.JLabel;

public class CountDown extends JFrame{

	private static final long serialVersionUID = 1L;

	private JLabel la;
	private JLabel la1;
	private JLabel la2;
	private JLabel la3;

	int x1=20, x2=20, x3=20;
	
	class MyThread extends Thread{
		@Override
		public void run() {
			for(int i=10;i>=0;i--) {
				try {
					sleep(1000);
				}catch(InterruptedException e) {
					e.printStackTrace();
				}
				la.setText(i+"");
			}
		}
	}
	
	class MyRace extends Thread{
		@Override
		public void run() {
			for(int i=0;i<120;i++) {
				try {
					sleep(100);
				}catch (Exception e) {
					e.printStackTrace();
				}
				x1+=(int)(Math.random()*10);
				la1.setBounds(x1,80,200,100);
				x2+=(int)(Math.random()*10);
				la2.setBounds(x2,180,200,100);
				x3+=(int)(Math.random()*10);
				la3.setBounds(x3,280,200,100);
				if(la.getText().equals("0")){
					TreeSet<Integer> set = new TreeSet<Integer>();
					set.add(la1.getX());
					set.add(la2.getX());
					set.add(la3.getX());
					la1.setText(3-set.headSet(la1.getX()).size() + " ��");
					la2.setText(3-set.headSet(la2.getX()).size() + " ��");
					la3.setText(3-set.headSet(la3.getX()).size() + " ��");

//
//					Integer[] order= {la1.getX(),la2.getX(),la3.getX()};
//					Integer[] copyOr=order.clone();
//					Arrays.sort(copyOr,(n,j)->j-n);
//					for(int j=0;j<order.length;j++) {
//						for(int n=0;n<copyOr.length;n++) {
//							if(order[j]==copyOr[n]) {
//								switch(j) {
//									case 0 :la1.setText((n+1)+"��");break;
//									case 1 :la2.setText((n+1)+"��");break; 
//									case 2 :la3.setText((n+1)+"��");break;
//								}
//							}
//						}
//					}
					break;
				}
			}
		}
	}
	public CountDown() {
	
		setTitle("ī��Ʈ�ٿ�");
		setBounds(100,100,720,500);
		la=new JLabel("start");
		la.setFont(new Font("Serif",Font.BOLD,100));
		la.setBounds(20,0,220,120);
		add(la);
		//������ ����
		setLayout(null);
		
		la1=new JLabel();
		la1.setIcon(new ImageIcon("baby.PNG"));
		la2=new JLabel();
		la2.setIcon(new ImageIcon("baby.PNG"));
		la3=new JLabel();
		la3.setIcon(new ImageIcon("baby.PNG"));
		la1.setBounds(20,80,200,100);
		la1.setFont(new Font("Serif",Font.BOLD,30));
		la2.setBounds(20,180,200,100);
		la2.setFont(new Font("Serif",Font.BOLD,30));
		la3.setBounds(20,280,200,100);
		la3.setFont(new Font("Serif",Font.BOLD,30));
		add(la1);
		add(la2);
		add(la3);
		
		MyThread my=new MyThread();
		MyRace race=new MyRace();
		my.start();
		race.start();
		
//		try {
//			my.join();
//		}catch (Exception e) {
//			e.printStackTrace();
//		}

		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setVisible(true);	
	}
	
}