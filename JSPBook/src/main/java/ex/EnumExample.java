package ex;

import java.util.Calendar;

public class EnumExample {

	public static void main(String[] args) {
		Week today = null;
		Calendar cal = Calendar.getInstance();
		int week = cal.get(cal.DAY_OF_WEEK);
		
		switch(week) {
			case 1 : today = Week.SUNDAY; break;
			case 2 : today = Week.MONDAY; break;
			case 3 : today = Week.TUESDAY; break;
			case 4 : today = Week.WEDSDAY; break;
			case 5 : today = Week.THURSDAY; break;
			case 6 : today = Week.FRIDAY; break;
			case 7 : today = Week.SATURDAY; break;
		}
		
		System.out.println("오늘 요일 : " + today.toString());
		

	}

}
