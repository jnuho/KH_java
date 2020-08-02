package oop.practice.controller;

import oop.practice.model.Book;

public class TestBook {
	public static void main(String[] args) {
		Book book = Book.createBook();
		book.setTitle("�ڹ�");
		book.setAuthor("��ó��");
		book.setPrice(35000);
		book.setDiscountRate(.1);

		book.bookInformation();

		System.out.print("���ε� ����: " + (int)(book.getPrice()*(1-book.getDiscountRate())));
	}
}
