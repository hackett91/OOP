package testpractice;

public class Zoo{
	
	public static void main(String args[]){

		Animal hippo;
		hippo = new Animal(15,75,"female");

		Animal dog;
		dog = new Animal(1,56, "male");

		Animal cat;
		cat = new Animal(9, 12, "female");

		cat.eat();

		hippo.sleep();

		dog.eat();

		Fish salmon;
		salmon = new Fish(1,5,"female");

		salmon.swim();

		Bird crow;

		crow = new Bird(1, 2, "male");
		// because a bird inherits from it parent class
		// animal it can use the eat and sleep funcitonality 
		
		crow.eat();
		crow.sleep();
		Chicken chick;
		chick = new Chicken(1,3,"girl");
		

	}

}