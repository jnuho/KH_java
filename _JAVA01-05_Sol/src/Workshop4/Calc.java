package Workshop4;

public class Calc {
	public int calculate(int data) {
		int sum=0;
		System.out.print("¦��: ");
		for(int i=1 ; i<=data; i++) {
			if(i%2==0) {
				sum+=i;
				System.out.print(i + " ");
			}
		}
		System.out.println("\n���: " + sum);
		return sum;
	}
}
