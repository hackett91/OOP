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




******************************************************************************




levanstines distance algorithm used to compare the data for tunepal
To make tunepal (we need to: )

using a class called Matrix to add , mult , identity

implement Levnstains disance algorithm used to match dna sequences for example
implement spell checker

signal processing->using the java sound api. -->JavaSwing/Java2D api

FFT-> the frequency thing - > string of notes

JDBC->load sql database of tunes




*/

//this is the java file
package Matrices; //the names of the folders
//NOTE NAME THE SAME AS CLASS
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

  for(int i = 0; i < rows; i++){
    for(int j = 0; j < cols; j++){
      this.elements[i][j] = this.elements[i][j] + m.elements[i][j];
    }
  }
}
// A static method you call the class rather than the instance of a class
//static method you call it on the class rather than the instance of a class
public static Matrix add(Matrix a , Matrix b){//this is equivalent with c=a+b
  //why have Matrix add (the space)?
  // You are creating a new Matrix (i.e. the return will be a new Matrix)
  // c will be used as a reference which will be returned to the newly create matrices in main
    Matrix c = new Matrix(a.rows, a.cols);


    for(int row = 0; row < a.rows; row++){
      for(int col = 0; col< a.cols; col++){
        c.elements[row][col] = b.elements[row][col] + a.elements[row][col];
      }
    }
    return c;
}

public void mult(Matrix b){

  float sum = 0;

  // row of the first multiple matrix need to move slowest because that
  // is the one which will contain the answer

  for(int i = 0; i < this.rows; i++){
    for(int j = 0; j < this.cols; j++){
        for( int k = 0; k < this.cols; k++){
        sum = sum + this.elements[i][k] * b.elements[k][j];

      }
      this.elements[i][j] = sum;
      sum =0;
    }
  }

}

public static Matrix mult(Matrix a , Matrix b){
 
  Matrix c;
  c = new Matrix(a.cols, a.rows);
  float sum = 0;

   for(int i =0 ; i < a.rows; i++){
      for(int j = 0; j< a.cols; j++){
        for(int k = 0; k < a.cols; k++){
          sum = sum + a.elements[i][k] * b.elements[k][j];
        }
        c.elements[i][j] = sum;
        sum = 0;
      }

   }
   return c;
}

}