/*this is the main class and put into the same package
open git bash in that folder(java).
click git bash here


type following
javac ie/dit/*.java
java ie.dit.Main //to run the java



operator overloading
in java cant do  c=a+b
or a+=b



*/
package ie.dit;

public class Main{

  public static void main(String[] args) {
    Matrix m1 = new Matrix(3,3);
    m1.identity();
    System.out.println(m1);


    Matrix m2 = new Matrix(3,2);
    m2.setElement(2,1,100);
    m2.setElement(1,1,8);
    System.out.println(m2.getElement(2,1));
    System.out.println(m2);

  //  System.out.println("This is the first addition");
    //m2.add(5);
    //System.out.println(m2);

    Matrix a = new Matrix(4,4);
    a.identity();
    a.setElement(2,3,7);
    a.setElement(3,1,2);
    a.setElement(3,0,4);

    Matrix b = new Matrix(4,4);
    b.identity();
    b.setElement(2,3,1);
    b.setElement(3,1,9);
    b.setElement(3,0,-7);

    a.add(b); //as if saying a+=b
    System.out.println(a);
  //  System.out.println(Matrix.add(a,b));
  System.out.println(b);

    Matrix c;
    c=Matrix.add(a,b);
    System.out.println(c);

    //multiplying the matrices together
    a.mult(b);
    c = Matrix.mult(a, b);
    System.out.println(a);
    System.out.println(b);
    System.out.println(c);
  }
}
