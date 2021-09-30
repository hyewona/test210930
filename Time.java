package Test;

import java.text.SimpleDateFormat;
import java.util.Calendar;

class timeCom{
	public static String compare(Calendar now) {
		String re="";
		Calendar cal1 = Calendar.getInstance();
		cal1.set(Calendar.HOUR, 4);
		cal1.set(Calendar.MINUTE, 0);
		
		Calendar cal2 = Calendar.getInstance();
		cal2.set(Calendar.HOUR, 12);
		cal2.set(Calendar.MINUTE, 0);
		
		Calendar cal3 = Calendar.getInstance();
		cal3.set(Calendar.HOUR, 18);
		cal3.set(Calendar.MINUTE, 0);
		
		Calendar cal4 = Calendar.getInstance();
		cal4.set(Calendar.HOUR, 22);
		cal4.set(Calendar.MINUTE, 0);
		
		if ((now.before(cal1))&&(now.after(cal2))) {
			re="Good Morning";
		}else if ((now.before(cal2))&&(now.after(cal3))) {
			re="Good Afternoon";			
		}else if ((now.before(cal3))&&(now.after(cal4))) {
			re="Good Evening";			
		}else if ((now.before(cal4))&&(now.after(cal1))) {
			re="Good Night";			
		}
		
		return re;
		
	}
}

public class Time {
	public static void main(String[] args) {
		SimpleDateFormat sdf = new SimpleDateFormat ("HH시 mm분");

		Calendar now = Calendar.getInstance();
		String sdf_time = sdf.format(now.getTime());
		
		String time = timeCom.compare(now);
		
		System.out.println("현재 시간은 " + sdf_time + "입니다.");
		System.out.println(time);
	}
}
