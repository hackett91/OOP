package ie.online.exercise1;

// we extended the animal class therefore it is now a super class or a 
// base class
public class Animal{

	int age;
	int weight;
	String gender;


	//this is a super constructor that can be called in other classes
	public Animal(int age, int weight,String gender){
		this.age = age;
		this.weight = weight;
		this.gender = gender;
	}


	public void eat(){
		System.out.println("I am eating");
	}

	public void sleep(){
		System.out.println("I like sleeping");
	}


}