/*
 * 상속(클래스간의 관계):
 * 	부모클래스(객체)의 멤버들을 자식클래스(객체)가 물려받는것
 *  
 *  1. 상속을 사용하는이유--> 기존에 만들어놓은 클래스의 재사용,
 * 						 	  확장(유지보수)을위해사용한다.
 *  2. 자바에서는 단일상속만이 가능하다(부모클래스가 한개만가능) 
 *  3. 부모클래스(super,parent)와 자식클래스(sub,child)가존재한다.
 *  4. 자바에서 제공되어지는 모든 클래스들은 Object 라고하는
 *     최상위 클래스로부터 상속되어진다.
 *       - Class Object is the root of the class hierarchy. 
 *       - Every class has Object as a superclass. 
 *       - All objects, including arrays, implement the methods of this class.
 *  5. 사용자정의 클래스들도 Object 클래스라는 최상위클래스를
 *     상속받아야한다(생략가능). 
 */
public class Parent {
	public int member1;
	public int member2;
	public void method1() {
		System.out.println("Parent.method1(): this -> " + this);
	}
	public void method2() {
		System.out.println("Parent.method2(): this -> " + this);
	}
}
