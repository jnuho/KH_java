package ncs.test7;

public class Human {
	private String name;
	private int age;
	private int height;
	private int weight;
	
	public Human() {
		// TODO Auto-generated constructor stub
	}

	public Human(String name, int age, int height, int weight) {
		super();
		this.name = name;
		this.age = age;
		this.height = height;
		this.weight = weight;
	}

	@Override
	public String toString() {
		return name + "\t" + age + "\t" + height + "\t" + weight + "\t";
	}

	public String getName() { return name; } 
	public void setName(String name) { this.name = name; } 
	public int getAge() { return age; } 
	public void setAge(int age) { this.age = age; } 
	public int getHeight() { return height; } 
	public void setHeight(int height) { this.height = height; } 
	public int getWeight() { return weight; } 
	public void setWeight(int weight) { this.weight = weight; } 
}
