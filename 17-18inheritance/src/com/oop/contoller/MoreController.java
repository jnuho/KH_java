package com.oop.contoller;

import java.util.Date;

import com.oop.model.vo.Animal;
import com.oop.model.vo.Cat;
import com.oop.model.vo.Character;
import com.oop.model.vo.Circle;
import com.oop.model.vo.Dog;
import com.oop.model.vo.Rectangle;
import com.oop.model.vo.Shape;
import com.oop.model.vo.Shield;
import com.oop.model.vo.Sword;
import com.oop.model.vo.Tiger;
import com.oop.model.vo.Triangle;

public class MoreController {
	public void shapeTest() {
		Shape shape=new Shape();
		Circle circle=new Circle();
		Triangle triangle=new Triangle();
		Rectangle rec=new Rectangle();
		
		shape = new Circle();
		System.out.println(shape instanceof Circle);
		System.out.println(shape instanceof Rectangle);
		System.out.println(shape instanceof Shape);
		shape = new Rectangle();
		System.out.println(shape instanceof Circle);
		System.out.println(shape instanceof Rectangle);
		System.out.println(shape instanceof Shape);
		
		Object obj = new Object();
		obj = new Date();
		obj = new String();
		obj = new Circle();
		
		shape=new Circle();
		shape.getX();
		shape.getY();

		((Circle)shape).getRadius();
		Circle c = (Circle)shape;
		shape = new Triangle();
		
//		rec = (Rectangle)shape;// ok but compile error
		rec.getPoint();

		shape.calCircle(new Circle());
		shape.calRec(new Rectangle());

		Shape[] shapes = new Shape[5];
		shapes[0] = new Circle();
		shapes[1] = new Rectangle();
		shapes[2] = new Circle();
		
		System.out.println(shapes[0]); //Circle
		System.out.println(shapes[1]); //Rectangle
		System.out.println(shapes[2]); //Circle

		((Circle)shapes[0]).getRadius();
		shape.calCircle(new Circle());
		shape.calRec(new Rectangle());
	}
	
	public void animalTest() {
		Animal[] ani = new Animal[5];
		ani[0] = new Dog("��������", "�˸�");
		ani[1] = new Cat("�����", "ġ��");
		ani[2] = new Tiger("ȣ����", "�ٹ�");

		ani[0].bark();
		ani[1].bark();
		ani[2].bark();
//		ani[0].action(); //ERROR
	}
	
	public void instanceTest() {
		checkObj(new Dog());
		checkObj(new Cat());

	}
	
	public void checkObj(Animal ani) {
		if(ani instanceof Cat)
			((Cat)ani).clean(); //ERROR if ani instanceof Dog
		else if (ani instanceof Dog)
			((Dog)ani).action();
		else if (ani instanceof Tiger)
			((Tiger)ani).attack();
		else
			System.out.println("�׷� ��ü�� �����ϴ�.");
	}
	
	public void createChara() {
		Character c1 = new Character("��¢��", 50, 99, 99, 0, new Sword("������� ", 3000));
		Character c2 = new Character("�ٹ�", 50, 99, 99, 0, new Shield("��������", 2500));
		
		System.out.println(c1);
		System.out.println(c2);

		((Sword)(c1.getItem())).getAttack();
		((Shield)c2.getItem()).getDefence();
	}
}
