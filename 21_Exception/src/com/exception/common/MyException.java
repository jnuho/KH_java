package com.exception.common;

//������ ����Ŭ���� �����
public class MyException extends RuntimeException{
	public MyException() {
		super();
	}
	
	public MyException(String msg) {
		super(msg);
	}

}
