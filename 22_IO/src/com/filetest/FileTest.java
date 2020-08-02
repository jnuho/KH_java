package com.filetest;

import java.io.File;
import java.io.IOException;

public class FileTest {
	public static void main(String[] args) {
		//������ �����Ϸ��� ���� ���� ��ü ����
		File file = new File("d:\\test1\\test\\first.txt");
		File dir = new File("d:\\test1\\test\\");
		//Ram�� ���� ��ü�� ������
		System.out.println(file.getName());
		System.out.println(file.getAbsolutePath());
		try {
			//��ο� �̹� ���� ������ false
			//���� ���޼� ������ true
			dir.mkdirs();

			System.out.println(file.createNewFile()); //�ϵ忡 ������ ����
			
		} catch(IOException e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		finally {
			if(file.exists()) {
				file.delete(); //���� ����
			}
		}
	}
}
