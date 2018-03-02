package exercise1;

public class Zoo{

	public static void main(String args[]){
    //
    //
		// Fish salmon;
		// salmon = new Fish(1,5,"female");
    //
		// salmon.swim();
    //
		// Bird crow;
    //
		// crow = new Bird(1, 2, "male");
		// // because a bird inherits from it parent class
		// // animal it can use the eat and sleep funcitonality
    //
		// crow.eat();
		// crow.sleep();
		// Chicken chick;
		// chick = new Chicken(1,3,"girl");

		//making this an animal type (parent) through animal specificatoin
		//we can invoke the move method but the actually object is a Sparrow
		//allows for things to be more dynamic and generalized
		// Animal sparrow1 = new Sparrow(1,2,"M");
		// //sparrow1.move();
    //
		// //making this an animal type (parent) through animal specificatoin
		// //we can invoke the move method but the actual object is a Fish
		// //allows for things to be more dynamic and generalized
		// Animal fish1 = new Fish(1,3,"W");
		// //fish1.move();
    //
		// moveAnimal(fish1);
		// moveAnimal(sparrow1);
		Flyable flyingBird = new Sparrow(1,2,"M");



	}
	// this is more dynamic because now you can pass a fish or an sparrow
	// this is representing a general idea of an animal being able to moveA
	// the parameter that this has is of type animal (its a parent type)
	// so all of its children can be passed in through the same
	// parameter. This method can be used to move all different specific
	// types of animals.
	//This is call polmorphism and it allows for making your program more
	// dynamic
	public static void moveAnimal(Animal animal){
		animal.move();
	}

}
