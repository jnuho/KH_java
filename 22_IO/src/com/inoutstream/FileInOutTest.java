package com.inoutstream;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

public class FileInOutTest {
	public void fileOutput() {
		//1. ���� �����Ҷ��¸��� ������ ���� ����
		//2. ���ϰ� ����Ǵ� ��Ʈ�� ����!
		//3. ��Ʈ���� �����Ǹ� ���� �ִ� �����͸� ����
		//�� ���븶�� �ش�Ǵ� Exceptionó���� �������.
		//������ ��Ʈ���� �ݵ�� �ݾ������(close)
		File file = new File("test.txt");
		FileOutputStream fos = null;
		try/*(FileOutputStream fos = new FileOutputStream(file);)*/{
			//Ȥ�� try~catch�� �ۿ� declare
			fos = new FileOutputStream(file);

			String data1 = "�ٹٴ� ���Դϴ�.";
//			byte[] data2 = {10, 20, 30, 40, 50};
			fos.write(data1.getBytes());
//			fos.write(data2);

		} catch(FileNotFoundException e) {
			e.printStackTrace();
		} catch(IOException e) {
			e.printStackTrace();
		} finally {
			if(fos != null) {
				try {
					fos.close();
				} catch(IOException e) {
					e.printStackTrace();
				}
			}
		}
	}

	public void fileInput() {
		//1. file��  File��ü�� ����
		//2. ��Ʈ���� ����
		//3. read�� �ҷ���
		//	byte���� ������� �ҷ����� ���� int��
		// 	�����͸� �� ������ ���� �ݺ����� Ȱ��
		// Exception ó��, ��Ʈ���� close()
		File file = new File("test.txt");
		FileInputStream fis = null;
		try {
			fis = new FileInputStream(file);
			//���� �о���� (int�� �ҷ���)
			int value = 0;
			
			while((value=fis.read()) != -1) {
				System.out.print((char)value);
			}
			
		} catch(IOException e) {
			e.printStackTrace();
		}
			
	}
}
	
