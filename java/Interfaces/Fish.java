package testpractice;

public class Fish extends Animal{

	

	public Fish(int age, int weight, String gender){
		super(age, weight, gender);
	}

	public void swim(){
		System.out.println("I am swimming");
	}

}