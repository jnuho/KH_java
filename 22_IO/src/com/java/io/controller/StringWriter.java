package com.java.io.controller;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;

public class StringWriter {
	public void stringWriter() throws IOException {
		BufferedWriter out = new BufferedWriter(new FileWriter("String.txt"));
		out.write("������ٶ�");
		out.newLine();
		out.write("���ڳ���");
		out.newLine();
		out.write("ABCDEFG ���ĺ� ����");
		out.close();
		
		System.out.println("���ڳ��� �Է� �Ϸ�.");
	}
}
