package com.datastream;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

import com.inoutstream.model.vo.Person;

public class DataStream {
	private Person[] pers = new Person[3];

	public void dataInput() {
		DataInputStream di = null;
		try {
			for(Person p1 : pers) {
				di = new DataInputStream(new FileInputStream("dataTest.txt"));
				//�Է� ������ ��� ���� ���ƾ���. �ٸ��� EOFException
				String name = di.readUTF();
				int age = di.readInt();
				double height = di.readDouble();
//				p1.setName(di.readUTF());
//				p1.setAge(di.readInt());
//				p1.setHeight(di.readDouble());
				System.out.println(p1.getName() + p1.getAge() + p1.getHeight());
			}
		}
		catch(EOFException e) {
			System.out.println("EOFException ���� �б� �Ϸ�");
		}
		catch(IOException e ) {
			e.printStackTrace();
		}
		finally {
			try {
				di.close();
			} catch(IOException e) {
				e.printStackTrace();
			}
		}
	}
	
	public void dataOutput() {
		pers[0] = new Person("�ٹ�", 2, 30); //�ڷ��� �����Ͽ� ����
		pers[1] = new Person("�����", 27, 180);
		pers[2] = new Person("�޽�", 99, 198);
		//DataOutputStream(������Ʈ��)
		DataOutputStream dos = null;
		try{
			dos = new DataOutputStream(new FileOutputStream("dataTest.txt"));
			//Person �迭�� ���� �ʱ�ȭ�ƴ��� Ȯ�� ����
			for(Person p : pers) {
				dos.writeUTF(p.getName());
				dos.writeInt(p.getAge());
				dos.writeDouble(p.getHeight());
			}
		} catch(IOException e) {
			e.printStackTrace();
		}
		finally {
			try {
				dos.close();
			} catch(IOException e) {
				e.printStackTrace();
			}
		}
	}
}
