package online.ioexcep;

import java.io.IOException;
import java.util.Scanner;

public class Main
{

	/* Approaches to dealing with Execeptions
		LBYL - look before you leap
		e.g. is object = NUll
		EAFP - easy to ask for forgiveness than permission
		e.g. go ahead perform operation and respond if go wrong
		*/

	public static void main(String [] args)
	{
		// int x = 98;
		// int y = 0;

		// System.out.println(divideLBYL(x, y));
		// System.out.println(divideEAFP(x,y));
		//System.out.println(divide(x,y));

		int x = getIntEAFP();

		System.out.println("x is "+ x);


	}
/* this method check if the character are digits and uses the look before you leap exception to

	to ensure that the no errors occurs*/

	private static int getIntLBYL(){

		Scanner s = new Scanner(System.in);

		boolean isValid = true;
		System.out.println("Please enter an integer");
		String input = s.next();
		for(int i =0; i<input.length(); i++){

			//for each element in the string each character will be tested to make sure its a number
			//if we find one that isn't
			if(!Character.isDigit(input.charAt(i)))
				isValid = false;
				break;
		}
		if(isValid)
		{
			return Integer.parseInt(input);
		}
		return 0;
	}

	private static int getIntEAFP(){
		
		System.out.println("please enter number");
		Scanner s = new Scanner(System.in);

		try
		{

			return s.nextInt();

		}
		catch(InputMissmatchException e){
			return 0;
		}
		
	}

	private static int getInt(){
		Scanner s = new Scanner(System.in);

		return s.nextInt();
	}
	/*  The LBYL method checks first. See line 31 */

	private static int divideLBYL(int x, int y)
	{
		
		if(y!=0)
		{
			return x/y;
		}
		else
		{
			return 0;
		}

	}

	/* The EAFP check first then catches the error.
	if we didn't make an attempt to catch the error the program would crash*/
	private static int divideEAFP(int x, int y)
	{
		try
		{
				return x/y;
		}
		catch(ArithmeticException e)
		{
			return 0;
		}
	}

	private static int divide(int x, int y){
		return x/y;
	}

}