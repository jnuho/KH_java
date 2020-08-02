package com.person.Controller;

import com.person.model.vo.Employee;
import com.person.model.vo.Person;
import com.person.model.vo.Student;
import com.person.model.vo.Teacher;

public class PersonController {
	public void personEnroll() {
		Person[] persons = new Person[3];
//		persons[0] = new Student("�ٹ�", 11, 'F', "��õ", 8, 2);
		persons[0] = new Student("ȫ�浿", 25, 'M', "��õ", 2, 'A');
		persons[1] = new Employee("�˸�", 2, 'M', "����", "������", 100);
		persons[2] = new Teacher("������", 22, 'M', "����", "����", 5);
		
		for(int i =0; i<persons.length; i++) {
			String msg = persons[i].getName() + persons[i].getAge()
					+ persons[i].getGender() + persons[i].getAddr();

			if(persons[i] instanceof Student) {
				Student s = (Student)persons[i];
				msg += s.getGrade();
			}
			else if(persons[i] instanceof Employee){
				Employee e= (Employee)persons[i];
				msg += e.getSal();
				System.out.println(msg);
			}
			else if(persons[i] instanceof Teacher) {
				Teacher t = (Teacher)persons[i];
				msg += t.getSubject();
			}

			System.out.println(msg);
		}
		
		//�������ε����� ���
		for(Person p : persons) {
			System.out.println(p);
			System.out.println(p.getName());
			if(p.getAge() > 23) {
				System.out.println("���̰� �����ϴ�.");
			}
		}
	}
}
