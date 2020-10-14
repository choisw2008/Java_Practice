package Day1;

import java.util.Random;
import java.util.Scanner;

public class arithmeric2 {

	public static void main(String[] args) {

		Random rd = new Random();

		int sum = 0;

		int n1 = rd.nextInt(100);
		int n2 = rd.nextInt(100);

		// 랜덤값 초합 구하기
		// sum += n1 + n2;
		// System.out.println("램덤값" + n1 + "+" + n2 +"의 합계 :" + sum);

		// 홀수면 더하기 짝수면 빼기
		if (n1 % 2 != 0) {
			
			System.out.println("램덤값" + n1 + " , " +n2);
			System.out.println(n1 + " " + "n1값이 홀수이므로   더합니다.");
			sum += n1 + n2;
			System.out.println("결과 : " + sum);
			
		} else if (n1 % 2 == 0) {
			
			System.out.println("램덤값" + n1 + " , " + n2);
			System.out.println(n1 + " " + "n1값이 짝수이므로  마이너스 합니다.");
			sum += n1 - n2;
			System.out.println("결과 : " + sum);
		}

	}// --public static void main(String[] args)

}// --public class arithmeric
