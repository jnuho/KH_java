package board.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Scanner;

import board.model.vo.*;

public class BoardManager {
	public static final Scanner CONSOLE = new Scanner(System.in);

	private List<Board> list = new ArrayList<Board>();
	private File file = new File("board_list.dat");

	//�޼ҵ� �ۼ�
//	1. �Խñ� ���� �޼ҵ�		
	public void writeBoard(){
//		>> ��������
//		1> "�� �Խñ� ���� �Դϴ�." ���
//		2> "������ : " >> �Է¹���(��������)
//		3> "�ۼ��� : " >> �̸� �Է¹��� (�������)
//		4> �ۼ���¥�� ���� ��¥�� �Է�ó����
//		5> "�۳��� : " >> ���� �ٷ� �Է¹���
//				"exit" �Է��ϸ� �Է�����
//		6> Board ��ü ������ �ʱⰪ���� �����
//		7> list�� �߰���
		this.checkNewLine();
		System.out.println("�� �Խñ� ���� �Դϴ�.");
		System.out.print("������ : ");
		String boardTitle = CONSOLE.nextLine(); //��������

		System.out.print("�ۼ��� : ");
		String boardWriter = CONSOLE.next(); CONSOLE.nextLine(); //�������

		System.out.print("�۳���(���� �Ϸ��Ϸ��� exit) : ");
		String boardContent= "";
		String line = "";
		do {
			line = CONSOLE.nextLine();
			boardContent += line;
		} while(!line.equals("exit"));
		
		Board newBoard = new Board(list.size()+1, boardTitle, boardWriter, 
				new Date(), boardContent, 0);
		list.add(newBoard);
	}


//	2. �Խñ� ��ü ����	�޼ҵ�
	public void displayAllList(){
//		>> ��������
//		1> list �� ��ϵ� ������ ��� ȭ�鿡 ��½�Ŵ
		for(Board b : list)
			System.out.println(b);
	}

//	3. �Խñ� �Ѱ� ����	�޼ҵ�
	public void displayBoard(){
//		>> ��������
//		1> "��ȸ�� �۹�ȣ : " >> �Է¹���
//		2> �ش� �۹�ȣ�� ���� �Խñ��� ȭ�鿡 ��½�Ŵ
//		3> �ش� �ۿ� ���� ��ȸ�� 1���� ó����
		System.out.print("��ȸ�� �۹�ȣ : ");
		int boardNo = CONSOLE.nextInt();
		for(Board b : list) {
			if(b.getBoardNo() == boardNo) {
				System.out.println(b);
				b.setReadCount(b.getReadCount() + 1);
			}
		}
	}


//	4. �Խñ� ���� ����	�޼ҵ�
	public void modifyTitle(){
//		>> ��������
//		1> "������ �۹�ȣ : " >> �Է¹���
//		2> �ش� �۹�ȣ�� ���� �Խñ��� ȭ�鿡 ��½�Ŵ
//		3> "������ ���� : " >> �� ���� �Է¹��� >> ���񺯰�
//		4> ����� ��ü ������ list�� �ش� ��ȣ ��ü�� ������
		System.out.print("������ �۹�ȣ : ");
		int boardNo = CONSOLE.nextInt(); CONSOLE.nextLine();
		String boardTitle = "";
		for(Board b : list) {
			if(b.getBoardNo() == boardNo) {
				System.out.println(b);
				System.out.print("������ ���� : ");
				boardTitle = CONSOLE.nextLine();
				b.setBoardTitle(boardTitle);
				return;
			}
		}
	}
		   

//	5. �Խñ� ���� ����	�޼ҵ�
	public void modifyContent(){
//		>> ��������
//		1> "������ �۹�ȣ : " >> �Է¹���
//		2> �ش� �۹�ȣ�� ���� �Խñ��� ȭ�鿡 ��½�Ŵ
//		3> "������ ���� : " >> �� ���� �Է¹��� >> ���뺯��
//		4> ����� ��ü ������ list�� �ش� ��ȣ ��ü�� ������
		System.out.print("������ �۹�ȣ : ");
		int boardNo = CONSOLE.nextInt(); CONSOLE.nextLine();
		String boardContent = "";
		String line = "";
		for(Board b : list) {
			if(b.getBoardNo() == boardNo) {
				System.out.println(b);
				System.out.println("������ ����(���� �Ϸ��Ϸ��� exit) : ");
				do {
					line = CONSOLE.nextLine();
					boardContent += line;
				} while(!line.equals("exit"));
				b.setBoardContent(boardContent);
				return;
			}
		}
	}

//	6. �Խñ� ���� �޼ҵ�
	public void deleteBoard(){
//		>> ��������
//		1> "������ �۹�ȣ : " >> �Է¹���
//		2> �ش� �۹�ȣ�� ���� �Խñ��� ȭ�鿡 ��½�Ŵ
//		3> "������ �����Ͻðڽ��ϱ�? (y/n) : " 
//			>> 'Y'�Է½� list���� �ش� ��ü ������
//		4> "oo�� ���� �����Ǿ����ϴ�." ���
		System.out.print("������ �۹�ȣ : ");
		int boardNo = CONSOLE.nextInt(); CONSOLE.nextLine();
		char answer = '\u0000';
		String boardTitle = "";
		for(Board b : list) {
			if(b.getBoardNo() == boardNo) {
				System.out.println(b);
				System.out.print("������ �����Ͻðڽ��ϱ�? (y/n) : ");
				answer = CONSOLE.nextLine().charAt(0);
				if(Character.toLowerCase(answer) == 'y') {
					list.remove(b);
					System.out.println(boardNo + "�� ���� �����Ǿ����ϴ�.");
				}
				else
					break;
			}
		}
	}
		

//	7. �Խñ� �˻� �޼ҵ�
	public void searchBoard(){
//		>> ��������
//		1> "�˻��� ���� : " >> �˻��� ���ڸ� �Է¹���
//		2> �Էµ� ���ڸ� �������� �����ϰ� �ִ� ��ü���� list����
//		   ã��
//		3> ȭ�鿡 �˻��� ��ü���� �����
		this.checkNewLine();
		System.out.print("�˻��� ���� : ");
		String boardTitle = CONSOLE.nextLine();
		for(Board b : list) {
			if(b.getBoardTitle().equals(boardTitle))
				System.out.println(b);
		}
	}


//	8. ���Ͽ� �����ϱ� �޼ҵ�
	public void saveListFile(){
//		>> ��������
//		1> list�� ����� ������ board_list.dat ���Ͽ� 
//		   ObjectOutputStream Ŭ���� ����Ͽ� ��� ������
//		   try with resource �� ����� ��
//		2> "board_list.dat �� ���������� ����Ǿ����ϴ�." ���
		try(FileOutputStream fos = new FileOutputStream(file);
			ObjectOutputStream oos = new ObjectOutputStream(fos);){
			oos.writeObject(list);
		} catch(IOException e) {
			e.printStackTrace();
		}
	}
	
	public void loadListFile() {
		if(file.exists() == false)
			return;
		ObjectInputStream ois = null;
		try{
			FileInputStream fis = new FileInputStream(file);
			ois = new ObjectInputStream(fis);
			this.list = (ArrayList<Board>)ois.readObject();
		} catch(ClassNotFoundException e) {
			e.printStackTrace();
		} catch(IOException e) {
			e.printStackTrace();
		} finally {
			try {
				ois.close();
			} catch(IOException e) {
				e.printStackTrace();
			}
		}
	}

//	9. ����ó���� �޼ҵ�
	public void sortList(int item, boolean isDesc){
//		>> ��������
//		1> item �� 1�̸� ��ȣ�� ����
//			item �� 2�̸� ��¥�� ����
//			item �� 3�̸� ����� ���� �۵��ǰ� ���Ŀ� Ŭ���� �����
//		2> isDesc �� true �̸� ������������ �۵�
//			isDesc �� false �̸� ������������ �۵��ǰ� ��
		if(item == 1) {
			if(isDesc)
				Collections.sort(list, new DescBoardNo());
			else
				Collections.sort(list, new AscBoardNo());
		}
		else if(item == 2) {
			if(isDesc)
				Collections.sort(list, new DescBoardDate());
			else
				Collections.sort(list, new AscBoardDate());
		}
		else if (item ==3) {
			if(isDesc)
				Collections.sort(list, new DescBoardTitle());
			else
				Collections.sort(list, new AscBoardTitle());
		}
		else
			return;
	}
	
	private void checkNewLine() {
		if(CONSOLE.hasNextLine())
			CONSOLE.nextLine();
	}
}
