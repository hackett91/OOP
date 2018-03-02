package ie.dit;


import java.io.FileReader;
import java.io.BufferedReader;
import java.io.IOException;
import java.util.ArrayList;

public class Minipulate(){
	

	//Where are we going to load this too??
	// we will load this to an Array List
	ArrayList<String> words = new ArrayList<String>();


	public Minipulate()
	{

	}

	public void loadData()
	{

		// first thing first you declare your buffer
		BufferReader inputStream = null;


		try
		{
			// the you instances your buffer but you wrap it in 
			// the file which you which you would like to read
			inputStream = new BufferReader(FileReader("word.text"));


			// the method I am using is taking one line at a time so I will read
			//this into a string called line

			String line;

			// I am going to read a line at a time 
			// while the buffer read does the work to return
			// each line

			while((line = inputStream.readline()) != null)
			{
				// I will then add it to the array list words  using
				// the java add method
				words.add(line);
			}
			

		} 
	}

}