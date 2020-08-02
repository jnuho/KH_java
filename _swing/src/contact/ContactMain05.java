package contact;

import java.awt.Color;
import java.awt.EventQueue;
import java.awt.Font;
import java.awt.event.ActionListener;
import java.util.ArrayList;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.JTextField;
import javax.swing.SwingConstants;
import javax.swing.border.CompoundBorder;
import javax.swing.border.EtchedBorder;
import javax.swing.border.LineBorder;

public class ContactMain05 {
	private static ContactDAO dao;
	private static ContactDAOImple daoimp;
	private JFrame frame;
	private JTextField menuCategory;
	private JTextField menuName;
	private JTextField menuNo;
	private JTextField menuPrice;
	private JTextArea textArea;

	/**

	 * Launch the application.

	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					ContactMain05 window = new ContactMain05();
					window.frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**

	 * Create the application.

	 */
	public ContactMain05() {
		dao = ContactDAOImple.getInstance(); // ContactDAO�� �ν��Ͻ��� ȣ��
		initialize();
	}
	/**

	 * Initialize the contents of the frame.

	 */
	private void initialize() {
		frame = new JFrame(); // ���� ������ ����
		frame.setBounds(100, 100, 510, 639);
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE); // ���� ��ư
		frame.getContentPane().setLayout(null);

		JLabel lblTitle = new JLabel("������ �޴�");
		lblTitle.setBorder(new LineBorder(Color.GREEN, 2, true));
		lblTitle.setFont(new Font("����", Font.BOLD, 21));
		lblTitle.setHorizontalAlignment(SwingConstants.CENTER);
		lblTitle.setBounds(12, 10, 470, 60);
		frame.getContentPane().add(lblTitle);



		JLabel lblMenuCategory = new JLabel("�з�"); // "�ε���" ���ڸ� �����ֱ� ���� ���̺�
		lblMenuCategory.setHorizontalAlignment(SwingConstants.CENTER);
		lblMenuCategory.setBorder(new CompoundBorder(
				new EtchedBorder(EtchedBorder.RAISED, new Color(255, 200, 0), new Color(255, 255, 0)), null));
		lblMenuCategory.setFont(new Font("����", Font.PLAIN, 14));
		lblMenuCategory.setBounds(12, 80, 160, 40);
		frame.getContentPane().add(lblMenuCategory);



		JLabel lblMenuName = new JLabel("�޴� �̸�"); // "�̸�" ���ڸ� �����ֱ� ���� ���̺�
		lblMenuName.setHorizontalAlignment(SwingConstants.CENTER);
		lblMenuName.setFont(new Font("����", Font.PLAIN, 14));
		lblMenuName.setBorder(new CompoundBorder(
				new EtchedBorder(EtchedBorder.RAISED, new Color(255, 200, 0), new Color(255, 255, 0)), null));
		lblMenuName.setBounds(12, 132, 160, 40);
		frame.getContentPane().add(lblMenuName);

		
		JLabel lblMenuNo = new JLabel("�޴� ��ȣ"); // "��ȣ" ���ڸ� �����ֱ� ���� ���̺�
		lblMenuNo.setHorizontalAlignment(SwingConstants.CENTER);
		lblMenuNo.setFont(new Font("����", Font.PLAIN, 14));
		lblMenuNo.setBorder(new CompoundBorder(
				new EtchedBorder(EtchedBorder.RAISED, new Color(255, 200, 0), new Color(255, 255, 0)), null));
		lblMenuNo.setBounds(12, 182, 160, 40);
		frame.getContentPane().add(lblMenuNo);


		JLabel lblMenuPrice = new JLabel("����"); // ���ݸ� �����ֱ� ���� ���̺�
		lblMenuPrice.setHorizontalAlignment(SwingConstants.CENTER);
		lblMenuPrice.setFont(new Font("����", Font.PLAIN, 14));
		lblMenuPrice.setBorder(new CompoundBorder(
				new EtchedBorder(EtchedBorder.RAISED, new Color(255, 200, 0), new Color(255, 255, 0)), null));
		lblMenuPrice.setBounds(12, 232, 160, 40);
		frame.getContentPane().add(lblMenuPrice);

		menuCategory = new JTextField(); // ������ϱ� ���� �ؽ�Ʈ �ʵ� ����
		menuCategory.setBounds(197, 82, 285, 40);
		frame.getContentPane().add(menuCategory);
		menuCategory.setColumns(10);

		menuName = new JTextField(); //������ϱ� ���� �ؽ�Ʈ �ʵ� ����
		menuName.setColumns(10);
		menuName.setBounds(197, 134, 285, 40);
		frame.getContentPane().add(menuName);


		menuNo = new JTextField(); // ������ϱ� ���� �ؽ�Ʈ �ʵ� ����
		menuNo.setColumns(10);
		menuNo.setBounds(197, 184, 285, 40);
		frame.getContentPane().add(menuNo);


		menuPrice = new JTextField(); // ����ϱ� ���� �ؽ�Ʈ �ʵ� ����
		menuPrice.setColumns(10);
		menuPrice.setBounds(197, 234, 285, 40);
		frame.getContentPane().add(menuPrice);


		JButton btnInsert = new JButton("���"); // ������ �����ϴ� ��ư ����
		btnInsert.addActionListener(new ActionListener() { // "���" ��ư�� Ŭ���ϸ� ����� ����
			@Override
			public void actionPerformed(java.awt.event.ActionEvent e) {
				insert();
			}
		});
		btnInsert.setFont(new Font("����", Font.BOLD, 14));
		btnInsert.setBounds(12, 282, 85, 40);
		frame.getContentPane().add(btnInsert);

		
		JButton btnSelect = new JButton("��ü�˻�"); // ����ϴ� ��ư ����
		btnSelect.addActionListener(new ActionListener() { // "��ü�˻�" ��ư�� Ŭ���ϸ� ��� ����
			@Override
			public void actionPerformed(java.awt.event.ActionEvent arg0) {
				selectAll();
			}
		});
		btnSelect.setFont(new Font("����", Font.BOLD, 14));
		btnSelect.setBounds(104, 282, 97, 40);
		frame.getContentPane().add(btnSelect);


		JButton btnIndexSelect = new JButton("�󼼰˻�"); // ����ϴ� ��ư ����
		btnIndexSelect.addActionListener(new ActionListener() { // "�󼼰˻�" ��ư�� Ŭ���ϸ� ��� ����
			@Override
			public void actionPerformed(java.awt.event.ActionEvent e) {
				select();
			}
		});
		btnIndexSelect.setFont(new Font("����", Font.BOLD, 14));
		btnIndexSelect.setBounds(207, 282, 108, 40);
		frame.getContentPane().add(btnIndexSelect);


		JButton btnUpdate = new JButton("����"); // �����ϴ� ��ư ����
		btnUpdate.addActionListener(new ActionListener() { // "����" ��ư�� Ŭ���ϸ� ��� ����
			@Override
			public void actionPerformed(java.awt.event.ActionEvent e) {
				update();
			}
		});
		btnUpdate.setFont(new Font("����", Font.BOLD, 14));
		btnUpdate.setBounds(320, 282, 79, 40);
		frame.getContentPane().add(btnUpdate);

		
		JButton btnDelete = new JButton("����"); //�����ϴ� ��ư ����
		btnDelete.addActionListener(new ActionListener() { // "����" ��ư�� Ŭ���ϸ� ��� ����
			@Override
			public void actionPerformed(java.awt.event.ActionEvent e) {
				delete();
			}
		});
		btnDelete.setFont(new Font("����", Font.BOLD, 14));
		btnDelete.setBounds(403, 282, 79, 40);
		frame.getContentPane().add(btnDelete);


		JScrollPane scrollPane = new JScrollPane(); // textArea�� ��ũ�� ���·� ����� ���� ��ũ���� ����
		scrollPane.setBounds(12, 332, 470, 259);
		frame.getContentPane().add(scrollPane);
		textArea = new JTextArea(); // ������ ������ֱ� ���� TextArea ����
		scrollPane.setViewportView(textArea);
	} // end initialize


	private void insert() { // ����ϴ� �޼ҵ�
		String menuCategory = this.menuCategory.getText(); // �ؽ�Ʈ �ʵ忡�� �ؽ�Ʈ�� �޾ƿ� name�� ����
		int menuNo = Integer.parseInt(this.menuNo.getText()); // �ؽ�Ʈ �ʵ忡�� �ؽ�Ʈ�� �޾ƿ� name�� ����
		String menuName =this.menuName.getText(); // �ؽ�Ʈ �ʵ忡�� �ؽ�Ʈ�� �޾ƿ� name�� ����
		int menuPrice = Integer.parseInt(this.menuPrice.getText());

		ContactVO contact = new ContactVO(menuCategory, menuNo, menuName, menuPrice); // ContactVO
																// �ν��Ͻ��� �����ؼ�
																// 
																// ������ contact��
																// ����
		int result = dao.insert(contact); // ContactDAOImple�� insert�� contact��
											// �Է��� ����� result�� ����
		
		this.menuName.setText("");			//��������� �ؽ�Ʈ�ʵ带 ����ֱ�
		this.menuCategory.setText("");
		this.menuNo.setText("");
		this.menuPrice.setText("");
		
		// result�� 0�� 1�� ��µ�
		// 0�� ���������� ����Ǿ��� ��, 1�� ���� ���� ��
		if (result ==1) {
			System.out.println("��� ����");
		} else {

			System.out.println("��� ����");
		}

		// textArea�� ������ ���� ���
		textArea.setText(contact.toString());
	}


	private void selectAll() {	//��ü�˻�
		ArrayList<ContactVO> list = dao.select();
		StringBuffer buffer = new StringBuffer();
		for (int i = 0; i < list.size(); i++) {
			buffer.append("[" + i + "] ").append(list.get(i).toString()).append("\n");
		} // end for
		textArea.setText(buffer.toString());
	}


	private void select() {		//�κа˻� menuNo����
		try {
			int menuNo = Integer.parseInt(this.menuNo.getText());
			ContactVO list = dao.select(menuNo);
			
			menuCategory.setText(list.getmenuCategory());
			menuName.setText(list.getMenuName());
			menuPrice.setText(list.getMenuPrice()+"");
			
//			menuNo.setText(Integer.parseInt(list.getMenuNo()));
			
		} catch (NumberFormatException e) {
			textArea.setText("���ڸ� �Է��ϼ���.");
		} catch (NullPointerException e) {
			textArea.setText("�ش� �ε����� �����ϴ�.");
		}
	}


	private void update() {
		try {
			int menuNo = Integer.parseInt(this.menuNo.getText());
			String menuCategory = this.menuCategory.getText();
			String menuName = this.menuName.getText();
			int menuPrice = Integer.parseInt(this.menuPrice.getText());
			
			ContactVO contact = new ContactVO(menuCategory,menuNo, menuName,menuPrice);
			
			int result = dao.update(menuNo, contact);
			System.out.println(contact);
			if (result ==1) {
				textArea.setText("���� ����");
			}
			else
				textArea.setText("���� ����");
		}catch(NumberFormatException e) {
			textArea.setText("���ڸ� �Է��� �ϼ���.");
		}
	}
//		try {
//			String menuCategory = this.menuCategory.getText();
//			int menuNo = Integer.parseInt(this.menuNo.getText());
//			String menuName = this.menuName.getText();
//			int menuPrice = Integer.parseInt(this.menuPrice.getText());
//			ContactVO contact = new ContactVO(menuCategory, menuNo, menuName, menuPrice);
//
//			int result = dao.update(menuCategory, contact);
//			if (result == 1) {
//				textArea.setText(menuCategory + "���� ����");
//			} else {
//				textArea.setText(menuCategory + "���� ����");
//			}
//		} catch (NumberFormatException e) {
//			textArea.setText("���ڸ� �Է��ϼ���.");
//		}
//	}
	private void delete() {
		try {
			int menuNo = Integer.parseInt(this.menuNo.getText());
			System.out.println(this.menuNo.getText());
			System.out.println(menuNo);
			int result = dao.delete(menuNo);
			
			this.menuName.setText("");		//������ ������ �ؽ�Ʈ �ʵ� ����ֱ�
			this.menuCategory.setText("");
			this.menuNo.setText("");
			this.menuPrice.setText("");
			
			if (result == 1) {
				textArea.setText(menuNo + "���� ����");
			} else {
				textArea.setText(menuNo + "���� ����");
			}
		} catch (NumberFormatException e) {
			textArea.setText("���ڸ� �Է��ϼ���.");
		}
	}


}
