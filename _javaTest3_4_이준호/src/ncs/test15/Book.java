package ncs.test15;

import java.io.Serializable;

public class Book implements Serializable {

	private static final long serialVersionUID = 1L;

	private String title;
	private String author;
	private int price;
	private String publisher;
	private double discountRate;
	
	public Book() {
		// TODO Auto-generated constructor stub
	}
	
	public Book(String title, String author, int price, String publisher, double discountRate) {
		super();
		this.title = title;
		this.author = author;
		this.price = price;
		this.publisher = publisher;
		this.discountRate = discountRate;
	}

	@Override
	public String toString() {
		return title + ", " + author+ ", " + price + " WON, " + publisher+", "+ discountRate+ "%\n"
				+ "discounted Price : " + (1-discountRate/100)*price;
	}

	public String getTitle() { return title; } 
	public void setTitle(String title) { this.title = title; } 
	public String getAuthor() { return author; } 
	public void setAuthor(String author) { this.author = author; } 
	public int getPrice() { return price; } 
	public void setPrice(int price) { this.price = price; } 
	public String getPublisher() { return publisher; } 
	public void setPublisher(String publisher) { this.publisher = publisher; } 
	public double getDiscountRate() { return discountRate; } 
	public void setDiscountRate(double discountRate) { this.discountRate = discountRate; } 
}
