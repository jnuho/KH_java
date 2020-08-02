package com.kh.controller2;

import java.util.Scanner;

public class CaesarCode2 {
	public void encryption() {
		Scanner sc = new Scanner(System.in);
		String encryp = "";
		System.out.print("문자입력 : ");
		String sentence = sc.nextLine();
		System.out.print("정수입력 : ");
		int su = sc.nextInt();

		for (int i = 0; i < sentence.length(); i++) {
			char temp = sentence.charAt(i);
			char sutemp = (char) (sentence.charAt(i) + su);

			if (sutemp >= 'a' && sutemp <= 'z' || sutemp >= 'A' && sutemp <= 'Z') {
				encryp += sutemp;
			}

			else {
				char compar1 = ' ', compar2 = ' ';// 비교 기준값설정 대, 소문자
				int full = 0;// 마지막값일때 연산을 위한 값
				// 소문자일때
				if (temp >= 'a' && temp <= 'z') {
					compar1 = 'z';
					compar2 = 'a';

				}
				// 대문자일때
				else if (temp >= 'A' && temp <= 'Z') {
					compar1 = 'Z';
					compar2 = 'A';
				}
				// 마지막값이고 입력값이 z를 넘어갈 경우
				if (su > 26 && (temp == 'z' || temp == 'Z'))
					full = 26;
				// 자리 옮긴수 정리
				int su1 = su - (compar1 - temp + 1) - full;
				temp = (char) (compar2 + su1);
				encryp += temp;
			}
		}
		System.out.println("입력문자 : \"" + sentence + "\" 입력정수 : " + su + "  암호문 : \"" + encryp + "\"");
	}
}
