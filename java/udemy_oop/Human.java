package ie.online;

public class Human{

	String name;
	int age;
	int heightInInches;
	String eyeColor;


	//a birth method (special method) the constructor
	// provides a way to construct objects

	public Human(String name, int age, int heightInInches, String eyeColor){
		this.name = name;
		this.age = age;
		this.heightInInches = heightInInches;
		this.eyeColor = eyeColor;	
	}





	//instruction for how human will behave
	public void speak(){

		System.out.println("Hello, my name is "+name);
		System.out.println("I am "+heightInInches+" inches tall");
		System.out.println("I am "+age+" years old");
		System.out.println("My eye color is "+ eyeColor);
	}
	public void eat(){
		System.out.println("eatting.....");
	}
	public void walk(){
		System.out.println("walking....");
	}
	
	public void work(){
		System.out.println("working....");
	}
	




}