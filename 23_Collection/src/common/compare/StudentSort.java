package common.compare;

import java.util.Comparator;

import com.map.Student;

public class StudentSort implements Comparator<Student> {

//	//�̸����� �������� ����
//	@Override
//	public int compare(Student s1, Student s2) {
//		return s1.getName().compareTo(s2.getName());
//	}

	//�̸����� �������� ����
	@Override
	public int compare(Student s1, Student s2) {
//		return s2.getName().compareTo(s1.getName());
		return (int)(s1.getSungjuk() - s2.getSungjuk());
	}
}
