package ie.online.exercise1;
// A CLASS CAN ONLY EXTEND ONE OTHER CLASS AND 
// THAT MAKES SENSE BECAUSE a child can only have one parent
public class Chicken extends Bird{
	
	public Chicken(int age, int weight, String gender){
		super(age,weight, gender);
	}

	//METHOD OVERRIDING
	//overriding the method defined in Bird (override = replace)
	//public void fly(){
	//	System.out.println("not able to fly...");
	//}

}