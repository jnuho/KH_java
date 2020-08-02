package com.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.Formatter;
import java.util.GregorianCalendar;
import java.util.StringTokenizer;

import com.model.Member;

public class StringController {
	public void stringController() {
		String name1 = "ABC";
		String name2 = "�ƾƾ�";
		String name3 = "������";
		String name4 = "dsds";
		
		ArrayList<String> list = new ArrayList();
		list.add(name1);
		list.add(name2);
		list.add(name3);
		list.add(name4);
		Collections.sort(list, (i,j)->i.compareTo(j));
		System.out.println(list);
		
		//String(����� �ּҰ� ����) ���� ���� �Ұ�

		//concat
		System.out.println(name1.concat(name2));

		if(name1.contains("AB"))
			System.out.println("AB�� �����մϴ�.");
		
		String str = "����,����,�ٹ�,�ƾ�";
		String[] chs = str.split(",");
		for(String s : chs) {
			System.out.println(s);
		}
		System.out.println(str.substring(3));
		System.out.println(str.substring(3, 6));
		

		//StrinBuffer(�ּҰ� �״��) ���� ���� ����
		String msg = "������";
		StringBuffer msg2 = new StringBuffer("����");

		System.out.println(msg + " : " + msg.hashCode());
		System.out.println(msg2 + " : " + msg2.hashCode());
		
		msg += "����";
		msg2.append("22����");
		System.out.println(msg + " : " + msg.hashCode());
		System.out.println(msg2 + " : " + msg2.hashCode());
		
		msg2.delete(0, 2);
		System.out.println(msg2);

		msg2.replace(0, msg2.length()/2, "REPLACED");
		System.out.println(msg2);
		
		System.out.println(msg + " : " + msg.hashCode());
		System.out.println(msg2 + " : " + msg2.hashCode());
		
		msg2.insert(3, "hehehe");
		System.out.println(msg + " : " + msg.hashCode());
		System.out.println(msg2 + " : " + msg2.hashCode());
		
		
		//StringBuilder ���� ���� ���� (NOT thread safe)
		StringBuilder builder = new StringBuilder();
		
		//StringTokenizer
		String language = "Java,C,C++,Javascript,HTML";
		StringTokenizer stn = new StringTokenizer(language, ",");

		while(stn.hasMoreTokens()) {
			String s = stn.nextToken();
			System.out.println(s);
		}
		
		//wrapper
		Integer num = 10; //auto boxing
		Integer num2 = new Integer(20);
		
		int su = num;
		System.out.println(su);
		String strSu = "19";
		int su2 = Integer.parseInt(strSu);
		System.out.println(su2);
		
		System.out.println(num.MAX_VALUE);
		System.out.println(Integer.MIN_VALUE);
		double height = 180.5;
		Double ki = height;
		height = ki;
		String height2 = "3.1415";
		double num3 = Double.parseDouble(height2);
		System.out.println(num3);
		
		//valueof (convert primitive type)
	}

	public void dateTest() {
		Date today = new Date(); //current time
		Date date0 = new Date(0); //1970.1.1 9:00 am
		Date date1 = new Date(987654322221L);  //new Date(milis);
		System.out.println(today);
		System.out.println(date0);
		System.out.println(date1);
		
		//current time
		Calendar cal = Calendar.getInstance();
		System.out.println(cal);
		System.out.println(cal.get(Calendar.YEAR));
		System.out.println(cal.get(Calendar.MONTH) + 1);
		System.out.println(cal.get(Calendar.DATE));
		System.out.println(cal.get(Calendar.HOUR));
		System.out.println(cal.get(Calendar.MINUTE));
		System.out.println(cal.get(Calendar.SECOND));
		
		//2001-5-22 birthday
		Calendar birthday = Calendar.getInstance();
		birthday.set(Calendar.YEAR, 2001);
		birthday.set(Calendar.MONTH, 5-1);
		birthday.set(Calendar.DATE, 22);
		
		//2001-5-22 6:30:30
		GregorianCalendar birth = new GregorianCalendar(2001, 5-1, 22,6,30,30);

		System.out.println(birth.get(Calendar.YEAR)); //2001
		System.out.println(birth.get(Calendar.MONTH) + 1); //5
		System.out.println(birth.get(Calendar.DATE)); //22
//		System.out.println(birth.get(Calendar.AM_PM));
		System.out.println(birth.get(Calendar.HOUR)); //6
		System.out.println(birth.get(Calendar.MINUTE)); //30
		System.out.println(birth.get(Calendar.SECOND)); //30

		Date temp = new Date(birth.getTimeInMillis());
		System.out.println(temp);

		//date format
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String date = sdf.format(temp);
		System.out.println(date);

		int year = Integer.parseInt(date.substring(0,4));
		System.out.println(year);
		
		Formatter f = new Formatter(System.out);
		f.format("%s%d%c", "�ȳ�", 10, 'A');
		
//		Formatter f2 = new Formatter(new File("output.txt"));
	}

	public void stringTokenizer() {
		String str = "a,b,c,d , e , f, g";
		StringTokenizer st = new StringTokenizer(str, ",");
		
		while(st.hasMoreTokens()) {
			System.out.println(st.countTokens());
			System.out.println(st.nextToken());
		}

		//test2
		String[] members={
			"prince 1234 ������ 19 180.5 9������",
			"user01 user01 ȣ���� 34 180 7������",
			"user02 user02 ���ڸ� 26 175.5 10������",
			"user03 user03 �޽� 33 165.5 7������"
		};
		StringTokenizer sz = null;

		String id;
		String pw;
		String name;
		int age;
		double height;
		String nickname;
		Member member = null;
		
		for(int i =0; i<members.length; i++) {
			sz = new StringTokenizer(members[i], " ");
			id = sz.nextToken();
			pw = sz.nextToken();
			name = sz.nextToken();
			age = Integer.valueOf(sz.nextToken());
			height = Double.valueOf(sz.nextToken());
			nickname = sz.nextToken();
			
			member = new Member(id, pw, name, age, height, nickname);
			member.showMemberInfo();
		}
	}
	
}
