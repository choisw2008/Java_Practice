package Day1;

import java.util.Scanner;

public class arithmeric1 {

	public static void main(String[] args) {
		int x, y;
		Scanner sc = new Scanner(System.in);

		System.out.println("숫자를 입력해 주세요 =>");
		x = sc.nextInt();
		
		System.out.println("2번째숫자를 입력해 주세요 =>");
		y = sc.nextInt();

		int sum = x + y;
		System.out.println("합계 : " + sum);

		if (sum % 2 == 0) {System.out.println(sum);} 
		
		else if (sum % 2 == 1) {
			System.out.println("총합이 홀수이면 -x를 한다.");
			System.out.println("결과 값 :" + (sum - x)); }
		
		if (sum > 10) {
			System.out.println("총합이 10보다 크면 x를 곱한다");
			System.out.println("결과 값 :" + (sum * x)); } 
		
		else if (sum < 10) {
			System.out.println("총합이 10보다 낮으면 sum / x를 한다");
			System.out.println("결과 값 :" + (sum / x)); }
		
	}//--public static void main(String[] args)
	
}//--public class arithmeric
