package Test;

public class TimerThread extends Thread {
	int n=0;
	
    public void run(){
        while(true){
             System.out.println(n);
             n++;
             try {
            	 sleep(1000);
             }catch (Exception e) {
            	 return;
			}
        }
   }
}
