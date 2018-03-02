package ie.StringTest;

public class StringTest
{
	public static void main(String[] args){

	String test = "I wondered  lonely as a cloud";

	System.out.println(test.startsWith("I w"));

	System.out.println(test.indexOf("lonely"));

	System.out.println(test.lastIndexOf("a"));

	System.out.println(test.indexOf("a", 10));

	System.out.println(test.toUpperCase());

	System.out.println(test.substring(2));

	System.out.println(test.substring(2,10));

	System.out.println(test.replace("a", "*"));


	}
}