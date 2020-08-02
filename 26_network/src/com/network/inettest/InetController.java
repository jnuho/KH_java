package com.network.inettest;

import java.net.InetAddress;
import java.net.UnknownHostException;

public class InetController {
	public static void main(String[] args) throws UnknownHostException {
		InetAddress localIp = InetAddress.getLocalHost();
		System.out.println(localIp); //hostname �Ǵ� ����ip

		InetAddress naver = InetAddress.getByName("www.naver.com");
		System.out.println("���̹�: " + naver.getHostAddress());
		
		InetAddress google = InetAddress.getByName("www.google.com");
		System.out.println("����: " + google.getHostAddress());

		InetAddress[] googles = InetAddress.getAllByName("www.google.com");
		for(InetAddress i : googles) {
			System.out.println(i);
		}
	}
}
