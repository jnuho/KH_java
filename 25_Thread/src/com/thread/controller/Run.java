package com.thread.controller;

import common.thread.CharacterThread;
import common.thread.MyThread;

public class Run {
	public static void main(String[] args) {
		//1. �����带 ������ ���� ThreadŬ������ �̿�
		//�����带 ������ Ŭ������ ����� Thread ��ü�� ���
		//run �޼ҵ带 Override
		
//		for(int i =0; i<5; i++) {
//			System.out.println("����" + i);
//		}
//
//		MyThread th1 = new MyThread("th1");
//		th1.start(); //���������! run�޼ҵ尡����! main���� �ٸ� �۾��������� ��������
//		MyThread th2 = new MyThread("th2");
//		th2.start();
//		
//		try {
//			th1.join();
//			th2.join();
//		} catch(InterruptedException e) {
//			e.printStackTrace();
//		}
//
//		//2. Runnable �������̽��� �̿��ϴ� ���
//		CharacterThread c1 = new CharacterThread("�����ؿ�", 100);
//		CharacterThread c2 = new CharacterThread("����", 200);
//		Thread cha1 = new Thread(c1);
//		Thread cha2 = new Thread(c2);
//		
//		//setPriority ���� �Ҵ�ð��� �ø�, ���� ���� �����°� �ƴ�
//		cha1.setPriority(Thread.MAX_PRIORITY); //10
//		cha2.setPriority(Thread.MIN_PRIORITY); //1
//
//		cha1.start();
//		cha2.start();
//		
//		//�ٸ� �����尡 ������ �����ϰ� �����غ���
//		//join() join�� ȣ���� �����尡 ���������� ���
////		cha1, cha2 �����尡 ������ ���� �ٸ� ������(main thread)�� ���
//		try {
//			cha1.join();
//			cha2.join();
//		} catch(InterruptedException e) {
//			e.printStackTrace();
//		}
//
////		���ξ����带 �������� ����
//		for(int i =0 ;i<5; i++)
//			System.out.println("main");
//		
//		System.out.println("���� ������ ����");
		
		new CountDown();
	}
}
