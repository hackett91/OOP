package exercise1;

// we extended the animal class therefore it is now a super class or a
// base class
public abstract class Animal{

	int age;
	int weight;
	String gender;

	//abstract class are used for inheritance

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

	//abstraction allows the idea that
	// each animal can move so whatever
	// animal that extents this class has to implements
	// this move method although there is no set way
	// to implement the method because a fish can swimming
	// a dog can walk etc
	public abstract void move();

}
