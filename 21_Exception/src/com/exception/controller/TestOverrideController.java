package com.exception.controller;

import java.io.EOFException;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.file.FileAlreadyExistsException;

public class TestOverrideController extends ExceptionController{

	@Override
//	public void test1() throws IOException{ //OK
	public void test1() throws EOFException, FileAlreadyExistsException{ //OK
		//���� ��� ���� throws ����. ��, ���� ���� ���� �ʴ� exception Ŭ������
	}

//	public void test1() throws Exception{ //�Ұ���
}
