package 通讯模块;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.Vector;

public class Server {

	public static void main(String[] args) {
		Vector<ClientThread> clientThreads = new Vector<>();
		
		try {
			ServerSocket serverSocket = new ServerSocket(1234);
			while(true) {
				Socket socket = serverSocket.accept();
				ClientThread clientThread = new ClientThread(socket, clientThreads);
				clientThreads.add(clientThread);
				clientThread.start();
			}			
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}

class ClientThread extends Thread {
	Socket socket;
	DataInputStream dataInputStream = null;
	DataOutputStream dataOutputStream = null;
	Vector<ClientThread> clientThreads;
	public ClientThread(Socket socket, Vector<ClientThread> clientThreads) {
		this.socket = socket;
		this.clientThreads = clientThreads;
		
		try {
			InputStream inputStream = socket.getInputStream();
			OutputStream outputStream = socket.getOutputStream();
			dataInputStream = new DataInputStream(inputStream);			
			dataOutputStream = new DataOutputStream(outputStream);
		} catch (IOException e) {
			clientThreads.remove(this);
		}
	}
	
	public void sendMessage(String message) {
		try {
			dataOutputStream.writeUTF(message);	//发送数据
			dataOutputStream.flush();
		} catch (IOException e) {
			clientThreads.remove(this);
		}
	}
	
	public void run() {
		try {
			while (true) {
				String message = dataInputStream.readUTF(); //接收数据
				for (ClientThread clientThread : clientThreads) {
					
					clientThread.sendMessage(socket.getLocalAddress()+":"+message); //遍历所有客户端线程，发送数据
				}
				if (message.equals("Bye")) {					
					break;
				}				
			}
			clientThreads.remove(this);  //把这个线程从clientThreads中去除
			dataOutputStream.close();
			dataInputStream.close();
		} catch (IOException e) {
			clientThreads.remove(this);
		}		
	}
}
