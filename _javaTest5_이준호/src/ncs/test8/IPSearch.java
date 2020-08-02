package ncs.test8;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Scanner;

public class IPSearch {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);

		// Ű����� ȣ��Ʈ�� �Ǵ� �����θ��� �Է¹޴´�.
		//�Է¹��� ȣ��Ʈ���� ������, ��� ip �ּҸ� ��ȸ�ؼ� ����Ѵ�.
		//��½� ȣ��Ʈ��� ip �ּҸ� �и��ؼ�, ip �ּҸ� ��µǰ� �Ѵ�.
		//��ȸ�� ip ������ 1�� �̻��̸� ���������� ��� ����ϰ�,
		//����ó���� try~catch�� ���� ó���Ѵ�.
		try {
			System.out.print("Type HOST or DOMAIN NAME(e.g. www.naver.com): ");
			InetAddress host = InetAddress.getByName(sc.nextLine());
			InetAddress[] hosts = InetAddress.getAllByName(host.getHostName());
			System.out.println("\"" + host.getHostName() + "\" has total of " + hosts.length + " IP addresss.");
			for(int i =0; i<hosts.length; i++) {
				System.out.println("IP" + (i+1)+" = " + hosts[i].getHostAddress() );
			}
			
		} catch(UnknownHostException e) {
			e.printStackTrace();
		}

	}
}
