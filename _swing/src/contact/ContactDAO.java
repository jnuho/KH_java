package contact;

import java.util.ArrayList;

public interface ContactDAO {

	// ����ó ���
	public abstract int insert(ContactVO vo);

	// ����ó ��ü �˻�
	public abstract ArrayList<ContactVO> select();

	// ����ó �ε��� �˻�
	public abstract ContactVO select(int menuNo);

	// ����ó ���� - �̸�, ��ȭ��ȣ, �̸���
	public abstract int update(int menuNo, ContactVO vo);

	// ����ó ����
	public abstract int delete(int menuNo);

} // end interface ContactDAO 