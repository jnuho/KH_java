package contact;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.util.ArrayList;


public class ContactDAOImple implements ContactDAO {
	// Singleton ���� ����
	// 1. private static �ڱ��ڽ� Ÿ�� ��� ���� ����
	private static ContactDAOImple instance = null;

	// 2. private ������
	private ContactDAOImple() {
		initDataDir(); // �ν��Ͻ��� ������ �� ����Ǳ� ������ �޼ҵ带 ������ �ָ� ���� ����ȴ�.
		initDataFile();
	}

	// 3. public static �ڱ��ڽ��� �����ϴ� �޼ҵ�
	public static ContactDAOImple getInstance() {
		if (instance == null) {
			instance = new ContactDAOImple();
		}
		return instance;
	}

	// ��� ����(�ʵ�)
	private ArrayList<ContactVO> list;
	// �����͸� ������ ������ ���� �̸� ����
	private static final String DATA_DIR = "data"; // ��� ���
	private static final String DATA_FILE = "contact.data";
	// ������ ������ ������ ����ϴ� File ��ü ����
	private File dataDir;
	private File dataFile;

	// ���ø����̼��� ���۵� �� ������ ������ �ִ� �� �˻��ϰ�, ������ ���� ����
	private void initDataDir() {
		dataDir = new File(DATA_DIR);
		System.out.println("���� ��� : " + dataDir.getPath());
		System.out.println("���� ��� : " + dataDir.getAbsolutePath());
		if (!dataDir.exists()) { // ������ ������
			if (dataDir.mkdir()) {
				System.out.println("���� ���� ����");
			} else {
				System.out.println("���� ���� ����");
			}
		} else { // ������ ������
			System.out.println("������ �̹� ����");
		}
	} // end initDataDir()

	// ������ ������ ���縦 �˻��ϰ�,
	// ������, ArrayList�� �� ����Ʈ�� ����
	// �ִ� ���, ���Ͽ��� �����͸� �о ArrayList�� ä��
	private void initDataFile() {
		String filePath = DATA_DIR + File.separator + DATA_FILE;
		dataFile = new File(filePath);
		System.out.println("���� ��� : " + dataFile.getPath());
		System.out.println("���� ��� : " + dataFile.getAbsolutePath());
		if (!dataFile.exists()) { // ������ ������ ������
			System.out.println("���ο� ������ ���� ����");
			list = new ArrayList<>();
		} else {
			System.out.println("���� ������ ����");
			readDataFromFile();
		}
	} // initDataFile()

	// TODO:
	// FileInputStream, BufferedInputStream, ObjectInputStream ���
	// data\contact.data ���Ͽ��� ArrayList ��ü�� �����͸� �о
	// ��� ���� list�� ����
	private void readDataFromFile() {
		InputStream in = null;
		BufferedInputStream bin = null;
		ObjectInputStream oin = null;
		try {
			// in = new FileInputStream("data/contact.data");
			in = new FileInputStream(dataFile);
			bin = new BufferedInputStream(in);
			oin = new ObjectInputStream(bin);

			list = (ArrayList<ContactVO>) oin.readObject();
			System.out.println("���� ��� ����");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				oin.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	// TODO:
	// FileOutputStream, BufferedOutputStream, ObjectOutputStream
	// ��� ���� list�� ������ data\contact.data ���Ͽ� ��
	// �޼ҵ� �ϼ� �� insert(), update(), delete()���� ȣ��

	private void writeDataToFile() {
		OutputStream out = null;
		BufferedOutputStream bout = null;
		ObjectOutputStream oout = null;
		try {
			out = new FileOutputStream("data/contact.data");
			bout = new BufferedOutputStream(out);
			oout = new ObjectOutputStream(bout);
			oout.writeObject(list);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				oout.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	} // end writeDataToFile()

	@Override
	public int insert(ContactVO vo) {
		for (int i = 0; i < list.size() - 1; i++) {
			list.get(0);
			System.out.println(list.get(i).getMenuNo());
		}
		list.add(vo);
		writeDataToFile();
		return 1;
	}

	@Override
	public ArrayList<ContactVO> select() {
		
		return list;
	}

	@Override
	public ContactVO select(int index) {
		if (index >= 0 && index < list.size()) {
			return list.get(index);
		} else {
			return null;
		}
	}

	@Override
	public int update(int menuNo, ContactVO vo) {
		for(int i=0; i<list.size(); i++) {
			if(list.get(i).getMenuNo()==menuNo) {
				System.out.println(list.get(i).toString());
				list.set(i, vo);
				writeDataToFile();
				return 1;
			}
		}
//			list.set(menuNo, vo);
//			writeDataToFile();
//			return 1;
		return 0;
	}

	@Override
	public int delete(int menuNo) {
		for(int i=0; i<list.size(); i++) {
			if(list.get(i).getMenuNo()==menuNo) {
				System.out.println(list.get(i).toString());
				list.remove(i);
				writeDataToFile();
				return 1;
			}
		}
		return 0;
	}

} // end class ContactDAOImple