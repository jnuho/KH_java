package ncs.test3;

import java.text.Format;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.GregorianCalendar;

public class DateTest {
	public static void main(String[] args) {
		Calendar cal = new GregorianCalendar(1987, Calendar.MAY, 27);
		cal.setTime(cal.getTime());
		System.out.print("����: " + 
				cal.get(Calendar.YEAR)+"�� " +
				cal.get(Calendar.MONTH)+"�� " + 
				cal.get(Calendar.DAY_OF_MONTH)+"�� ");
//				cal.get(Calendar.DAY_OF_WEEK));
		Format formatter = new SimpleDateFormat("EEEE"); 
		String date = formatter.format(cal.getTime());
		System.out.println(date);
		

		Calendar now = Calendar.getInstance();
		System.out.print("����: " + 
				now.get(Calendar.YEAR)+"�� " +
				now.get(Calendar.MONTH)+"�� " + 
				now.get(Calendar.DAY_OF_MONTH)+"�� ");
		String dateNow = formatter.format(now.getTime());
		System.out.println(dateNow);


		int age = now.get(Calendar.YEAR) - cal.get(Calendar.YEAR);
		if(now.get(Calendar.MONTH) < cal.get(Calendar.MONTH))
			age = age -1;
		else if(now.get(Calendar.MONTH) == cal.get(Calendar.MONTH)) {
			if(now.get(Calendar.DAY_OF_MONTH) < cal.get(Calendar.DAY_OF_MONTH))
				age = age -1;
		}

		System.out.println("������: " + age);
	}
}
