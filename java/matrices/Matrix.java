/*
Instructions with java compiling
open git bash which will be used to run the java code

install java JDK video Instructions on github!


create a new folder called java. (this is known as the java package which setst the namespace of the package)
inside create a new folder called ie.
in that create another called dit

java has to be created reversd as explanied above

make sure to remove the extensions of the file and replace with java
all java classes are called with upper case
in this example Matrix.java




********************************************************************************




*levanstines distance algorithm used to compare the data for tunepal*
To make tunepal (we need to: )

using a class called Matrix to add , mult , identity

implement Levnstains disance algorithm used to match dna sequences for example
implement spell checker

signal processing->using the java sound api. -->JavaSwing/Java2D api

FFT-> the frequency thing - > string of notes

JDBC->load sql database of tunes




*/

//this is the java file
package ie.dit; //the names of the folders
public class Matrix{
//the fields
private int rows;
private int cols;

private float[][] elements;

public int getRows(){//will reurn the values of the private field to the other class or main function (these are known as accessors)
  return rows;
}

public int getCols(){
  return cols;
}

public void setElement(int row , int col , float val){
  elements[row][col]=val;
}

//a read accessor
public float getElement(int row , int col){
  return elements[row][col];
}

public Matrix(int rows , int cols){
  this.rows = rows;
  this.cols = cols;
  elements = new float[rows][cols];
}

public void identity(){
  for (int row = 0; row<rows;row++ ) {
    for (int col=0; col<cols; col++ ) {
      //can us if statments but bryan uses the terenu
      elements[row][col]=(row==col)?1 :0; //a?b:c if a is the value of b then a is c

    }
  }
}
  public String toString(){
    String ret="";
    for (int row = 0; row<rows;row++ ) {
      for (int col=0; col<cols; col++ ) {
        //can us if statments but bryan uses the terenu
      ret+=elements[row][col] + "\t"; //spreads by a tab
      }
      ret +="\n"; //puts to new line. Why += -->is to append the string
    }
    return ret;
  }

//signature for adding the Matrix //a+=b
public void add(Matrix m){
//  val = 10;
for(int row = 0; row < rows; row ++){
  for (int col=0;col <cols ; col++ ) {
    this.elements[row][col]=this.elements[row][col] + m.elements[row][col];
  }
}
}
//static method you call it on the class rather than the instance of a class
//static function can only be called from class not objects.
//hence need to use a.blah, b.blah , etc for the rows and cols
public static Matrix add(Matrix a , Matrix b){//this is equivalent with c=a+b
  //why have Matrix add (the space)?
  Matrix c = new Matrix(a.rows , a.cols); //same size
  //creating a new matrix so i can return it

  for (int row = 0; row < a.rows; row ++ ) {
    for (int col =0; col< a.cols; col++ ) {
      c.elements[row][col] = a.elements[row][col] + b.elements[row][col];

    }
  }
  // You are creating a new Matrix (i.e. the return will be a new Matrix)
  //return new Matrix(1,2);
  return c;
}

//Multiplying the matrices
public void mult(Matrix m){
  float sum=0;
  for (int row = 0;row<rows ;row++ ) {
    for(int col=0; col<cols; col++){
      for (int pos=0;pos<cols ;pos++ ) {
        sum = sum+  (this.elements[row][pos] * m.elements[pos][col]);
      }
      this.elements[row][col] = sum;
      sum=0;
    }
  }
}


public static Matrix mult(Matrix a , Matrix b){
Matrix c = new Matrix(a.rows , b.rows);
float sum=0;
for (int row = 0;row<a.rows ;row++ ) {
  for(int col=0; col<a.cols; col++){
    for (int pos=0;pos<a.cols ;pos++ ) {
      sum = sum+  (a.elements[row][pos] * b.elements[pos][col]);
    }
    c.elements[row][col] = sum;
    sum=0;
  }
}


  return c;

}

}
