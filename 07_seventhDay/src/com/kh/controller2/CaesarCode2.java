package com.kh.controller2;

import java.util.Scanner;

public class CaesarCode2 {
	public void encryption() {
		Scanner sc = new Scanner(System.in);
		String encryp = "";
		System.out.print("�����Է� : ");
		String sentence = sc.nextLine();
		System.out.print("�����Է� : ");
		int su = sc.nextInt();

		for (int i = 0; i < sentence.length(); i++) {
			char temp = sentence.charAt(i);
			char sutemp = (char) (sentence.charAt(i) + su);

			if (sutemp >= 'a' && sutemp <= 'z' || sutemp >= 'A' && sutemp <= 'Z') {
				encryp += sutemp;
			}

			else {
				char compar1 = ' ', compar2 = ' ';// �� ���ذ����� ��, �ҹ���
				int full = 0;// ���������϶� ������ ���� ��
				// �ҹ����϶�
				if (temp >= 'a' && temp <= 'z') {
					compar1 = 'z';
					compar2 = 'a';

				}
				// �빮���϶�
				else if (temp >= 'A' && temp <= 'Z') {
					compar1 = 'Z';
					compar2 = 'A';
				}
				// ���������̰� �Է°��� z�� �Ѿ ���
				if (su > 26 && (temp == 'z' || temp == 'Z'))
					full = 26;
				// �ڸ� �ű�� ����
				int su1 = su - (compar1 - temp + 1) - full;
				temp = (char) (compar2 + su1);
				encryp += temp;
			}
		}
		System.out.println("�Է¹��� : \"" + sentence + "\" �Է����� : " + su + "  ��ȣ�� : \"" + encryp + "\"");
	}
}
