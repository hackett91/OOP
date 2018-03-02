package ie.dit;
//type java ie.dit.StringTest
public class StringTest{


	public static void main(String args[]){
		//string manipulations
		String test = "I wandered lonely as a cloud";
		System.out.println(test.startsWith("I w"));
		System.out.println(test.indexOf("lonely"));
		System.out.println(test.lastIndexOf("a"));

		System.out.println(test.indexOf("a" , 10)); //starts at character 10 and search from here
		System.out.println(test.equals("hello")); //will return false
		System.out.println(test.toUpperCase());

		System.out.println(test.substring(2)); //returns string from character 2 to end
		System.out.println(test.substring(2,10));//note lowercase for substring

		System.out.println(test.replace("a" , "*"));

		//System.out.println(test.substring(-1,3));

		//doing some excersises-->codeBat (site) MakeoutWorld problem

		//the in line if statment
		/*
		code example from code bat 
		return(str.length() <=2) ? str : str.subtring(0,2);
		*/

	}
}