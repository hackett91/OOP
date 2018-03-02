package exercise1;

public class Zoo{

	public static void main(String args[]){


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
		Sparrow sparrow1 = new Sparrow(1,2,"M");
		sparrow1.move();

	}

}
