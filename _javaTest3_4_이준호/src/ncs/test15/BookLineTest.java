package ncs.test15;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class BookLineTest {

	public void storeList(List<Book> list) {
		list.add(new Book("�ڹ��� ����", "���ü�", 30000, "��������", 15));
		list.add(new Book("�������� �ڹ�", "������", 29000, "������", 20));
		list.add(new Book("��ü���� JAVA8", "�ݿ���", 30000, "�Ͻ�Ȩ", 10));
	}

	public void saveFile(List<Book> list) {
		try(FileOutputStream fos = new FileOutputStream(new File("book.dat"));
				ObjectOutputStream oos = new ObjectOutputStream(fos); ) {
			oos.writeObject(list);

		} catch(IOException e) {
			e.printStackTrace();
		}
	}

	public List<Book> loadFile(){
		try(FileInputStream fis = new FileInputStream(new File("book.dat"));
				ObjectInputStream ois = new ObjectInputStream(fis); ) {
			List<Book> list = (List<Book>)ois.readObject();
			return list;

		} catch(IOException e) {
			e.printStackTrace();
		} catch(ClassNotFoundException e) {
			e.printStackTrace();
		}
		return null;
	}

	public void printList(List<Book> list) {
		Iterator<Book> itr = list.iterator();
		while(itr.hasNext()) {
			System.out.println(itr.next());
		}
		
	}

	public static void main(String[] args) {
		BookLineTest test5 = new BookLineTest();
		List<Book> list = new ArrayList<Book>();

		test5.storeList(list);
		test5.saveFile(list);
		test5.printList(list);
		
		List<Book> newList = test5.loadFile();
		
		System.out.println();
		test5.printList(newList);
	}
}
