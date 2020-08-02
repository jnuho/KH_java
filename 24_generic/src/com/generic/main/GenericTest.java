package com.generic.main;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import com.generic.model.vo.Person;
import com.generic.model.vo.Student;

public class GenericTest {

	public static void main(String[] args) {

	}
}

class GenericController{
	
	public void genericTest() {
		
		List<Person> list=new ArrayList<Person>();
		list.add(new Person("������",19,"��⵵ �����"));
		list.add(new Person("����ö",32,"�����"));
		list.add(new Person("������",20,"��⵵ �����"));
		list.add(new Person("������",21,"�����"));
		list.add(new Person("���°�",28,"�����"));
		//list.add("�ȵ�!");
		
		for(Person p: list) {
			System.out.println(p);
		}
		System.out.println(list.get(0).getName());
		//map�� ���� ���׸� ����
		Map<String, Person> persons=new HashMap<String, Person>();
		
		persons.put("����",new Person("���ȣ", 26,"�θ����"));
		persons.put("��ȣ",new Person("�ڱ��", 27,"�д�"));
		persons.put("���",new Person("������", 27,"����"));
		//persons.put(1,new Person("������", 27,"����"));
		
		persons.get("����").getName();
		
		Set<String> keys=persons.keySet();
		Iterator<String> it=keys.iterator();
		while(it.hasNext()) {
			System.out.println(persons.get(it.next()).getName());
		}
		
		Set<Map.Entry<String, Person>> entry=persons.entrySet();
		Iterator<Map.Entry<String, Person>> it2=entry.iterator();
		while(it2.hasNext()) {
			System.out.println(it2.next().getValue());
		}
		
	}
	
}

