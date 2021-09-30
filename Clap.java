package Test;

public class Clap {
	public static void main(String[] args) {
		int n, m, cnt;
		
		for (int i = 0; i < 100; i++) {
			cnt=0;
			n = i/10;
			m = i%10;
			
			if (n != 0 && n % 3 == 0) {
				cnt++;
			}

			if (m != 0 && m % 3 == 0) {
				cnt++;
			}
			
			if (cnt == 1) {
				System.out.println(i + " 박수한번");
			}else if (cnt == 2) {
				System.out.println(i + " 박수두번");				
			}
		}
	}
}
