package testpractice;

public class Bird extends Animal{

	// this is a constructor and inside it calls the super constructor
	public Bird(int age, int weight, String gender){
		super(age,weight,gender);

	}
//YOU CAN GET RID OF THE FLY BEHAVIOUR AND INSTEAD USE AN INTERFACE
//	public void flying(){
//		System.out.println(" I am flying");
//	}



}
//AN INTERFACE IS BASICALLY A CONTRACT AND ANY CLASS THAT IMPLEMENTS THAT INTERFACE
//IT BECOMES COMPULSARY FOR THAT CLASS TO IMPLEMENT THE METHODS THAT ARE DEFINED
// IN THAT INTERFACE
