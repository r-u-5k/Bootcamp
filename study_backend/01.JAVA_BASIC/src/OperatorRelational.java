
public class OperatorRelational {

	public static void main(String[] args) {
		int a = 10;
		int b = 20;
		boolean result = a > b;
		System.out.println("10 > 20 -> " + result);
		result = a < b;
		System.out.println("10 < 20 -> " + result);
		result = a >= b;
		System.out.println("10 >= 20 -> " + result);
		result = a <= b;
		System.out.println("10 <= 20 -> " + result);
		result = a == b;
		System.out.println("10 == 20 -> " + result);
		result = a != b;
		System.out.println("10 != 20 -> " + result);
		
		System.out.println("- 문자비교 -");
		char ca = 'a';
		char cb = 'b';
		result = ca > cb;
		System.out.println("'a' > 'b' -> " + result);
		result = '가' < '나';
		System.out.println("'가' < '나' -> " + result);
	}

}
