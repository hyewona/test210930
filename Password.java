package Test;

import java.util.Scanner;

public class Password {
	public static void main(String[] args) {
		String password="myongji60";
		String input;
		int trynumber=0;
		
		Scanner scanner=new Scanner(System.in);
		
		while (true) {
			System.out.print("암호를 입력하세요: ");
			input = scanner.next();
			trynumber++;
			
			if (input.equals(password)) {
				System.out.println("환영합니다.");
				break;
			}
			
			System.out.println("암호가 틀립니다.");
			
			if (trynumber == 3) {
				System.out.println("접속을 거부합니다.");
				break;
			}
		}
		scanner.close();
	}
}
