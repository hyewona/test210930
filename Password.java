package Test;

import java.util.Scanner;

public class Password {
	public static void main(String[] args) {
		String password="myongji60";
		String input;
		int trynumber=0;
		
		Scanner scanner=new Scanner(System.in);
		
		while (true) {
			System.out.print("��ȣ�� �Է��ϼ���: ");
			input = scanner.next();
			trynumber++;
			
			if (input.equals(password)) {
				System.out.println("ȯ���մϴ�.");
				break;
			}
			
			System.out.println("��ȣ�� Ʋ���ϴ�.");
			
			if (trynumber == 3) {
				System.out.println("������ �ź��մϴ�.");
				break;
			}
		}
		scanner.close();
	}
}
