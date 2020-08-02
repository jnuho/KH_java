package com.network.server;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.ServerSocket;
import java.net.Socket;

public class Server {

	public static void main(String[] args) throws IOException{
		//��Ʈ����
		int port=8888;
		//Serversocket�� ����
		ServerSocket server=new ServerSocket(port);
		//client�� �����ϱ⸦ ��ٸ�~~~ 
		//������ ������ ������� �ʰ� ���ѹݺ�����
		while(true) {
			Socket socket=server.accept();//client��û�� ����
			//��û�� ���� ����(data)�� Ȯ���ϰ�(�޾ƿ���) 
			//�����ؾߵǴ� ����(data)�� client����(���, ����)
			//����� 
			InputStream input=socket.getInputStream();
			OutputStream output=socket.getOutputStream();
			//Ŭ���̾�Ʈ�ϰ� ����!
			
			//������ ������ ��Ȱ�ϰ� �ϱ� ���� ������Ʈ���� �̿�
			BufferedReader br=new BufferedReader(new InputStreamReader(input));
			PrintWriter clientOutput=new PrintWriter(output);
			//���� ����Ϳ� ����ϱ� ���� printWriter�� �̿�
			
			//�о���� ������!
			
			while(true) {
				String message=br.readLine();
				
				if(!message.equals("exit")) {
					System.out.println(socket.getInetAddress().getHostName()+"�� ���� �޼��� : "+message);
					clientOutput.println("�޼��� �ޱ� ����");
					clientOutput.flush();
				}else {
					System.out.println("��������");
					break;
				}
			}
			
			br.close();
			clientOutput.close();
			socket.close();
		}
		
		
	}
	
	
}

