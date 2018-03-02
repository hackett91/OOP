package source.tostring;
import java.util.*;
public class Potpie{
	
	private int month;
	private int day;
	private int year;

	public Potpie(int m, int d, int y){
		month = m;
		day =d;
		year =y;

		//System.out.println("the constructor for this is %s ",this);

	}

	public String toString(){
		return String.format("%d/%d/%d",month,day,year);
	}
	
}