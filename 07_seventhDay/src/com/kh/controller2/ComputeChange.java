package com.kh.controller2;
import java.util.Scanner;

public class ComputeChange {
	public void computeChange() {
		Scanner sc=new Scanner(System.in);
		System.out.print("������ �ݾ��� �Է��ϼ��� : ");
		int income=sc.nextInt();
		System.out.print("��ǰ���� : ");
		int price=sc.nextInt();
		//�ܵ�
		int charge=income-price;
		//���� ���� �ʱ�ȭ
		int fM_p=0,dM_p=0,f_p=0,o_p=0,fH=0,oH=0,fif=0,ten=0;
		//�ܵ����
		int extra=charge;
		
		if(charge<0) {
			System.out.println("���� �� �޾ƾ��մϴ�.");
		}
		else {
			while(extra>0) {
				if(50000<=extra) {fM_p=extra/50000;extra%=50000;if(extra==0)break;}
				else if(10000<=extra) {dM_p=extra/10000;extra%=10000;if(extra==0)break;}
				else if(5000<=extra) {f_p=extra/5000;extra%=5000;if(extra==0)break;}
				else if(1000<=extra) {o_p=extra/1000;extra%=1000;if(extra==0)break;}
				else if(500<=extra)	{fH=extra/500;extra%=500;if(extra==0)break;}
				else if(100<=extra)	{oH=extra/100;extra%=100;if(extra==0)break;}
				else if(50<=extra) {fif=extra/50;extra%=50;if(extra==0)break;}
				else if(10<=extra) {ten=extra/10;extra%=10;if(extra==0)break;}	
			}
			System.out.println("========================================");
			System.out.println("50000����"+" ���� "+fM_p+"��");
			System.out.println("10000����"+" ���� "+dM_p+"��");
			System.out.println("5000����"+" ���� "+f_p+"��");
			System.out.println("1000����"+" ���� "+o_p+"��");
			System.out.println("500����"+" ���� "+fH+"��");
			System.out.println("100����"+" ���� "+oH+"��");
			System.out.println("50����"+" ���� "+fif+"��");
			System.out.println("10����"+" ���� "+ten+"��");
			System.out.println("========================================");
			System.out.println("�Ž����� : "+charge+"��");
		}
	}
}