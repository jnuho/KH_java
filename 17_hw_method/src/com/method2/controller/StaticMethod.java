package com.method2.controller;

public class StaticMethod {
	private static String value;
	//TODO
	//Constructor  : �ʵ尡 ��� static �� ���� ������ �ʿ����
	public StaticMethod(){}

	public StaticMethod(String value){
		this.value = value;
	}

	public void toUpper() {
		if (value != null)
			value = value.toUpperCase();
	}

	public void setChar(int i, char ch) {
		if(value!=null) {
			if(i < value.length())
				value = value.substring(0,i) + ch + value.substring(i+1);
		}
	}

	public static int valueLength() {
		if (value != null)
			return value.length();
		return -1;
	}

	//4. ��ȯ�� �ְ� �Ű����� �ִ� static �޼ҵ�
	//���ڿ����� ���޹޾�, value �ʵ尪�� �ϳ��� ���ļ� ���� ó��
	//�޼ҵ�� : valueConcat
	public static String valueConcat(String str) {
		return value.concat(str);
	}
}
