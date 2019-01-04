package 通讯模块;

import java.awt.BorderLayout;
import java.awt.FlowLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.JTextField;

public class Client extends JFrame{
	JTextField inputField = new JTextField(10);
	JButton sendButton = new JButton("发送");
	JButton quitButton = new JButton("退出");
	JTextArea displayArea = new JTextArea(15, 20);
	DataOutputStream dataOutputStream = null;
	DataInputStream dataInputStream = null;
	
	public Client() {
		JPanel northPanel = new JPanel();
		northPanel.setLayout(new FlowLayout());
		northPanel.add(inputField);
		northPanel.add(sendButton);
		northPanel.add(quitButton);
		
		this.setLayout(new BorderLayout());		
		this.add(northPanel, BorderLayout.NORTH);
		this.add(new JScrollPane(displayArea), BorderLayout.CENTER);
		this.pack();
		this.setDefaultCloseOperation(EXIT_ON_CLOSE);
		this.setLocationRelativeTo(null);
		this.setVisible(true);
		
		InputStream inputStream;
		OutputStream outputStream;
		try {
			Socket socket = new Socket("localhost", 1234);
			inputStream = socket.getInputStream();
			outputStream = socket.getOutputStream();
			dataOutputStream = 
					new DataOutputStream(outputStream);
			dataInputStream = 
					new DataInputStream(inputStream);
			new receiveThread(dataInputStream, displayArea).start();
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		quitButton.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				try {
					dataOutputStream.writeUTF("Bye");
					dataOutputStream.flush();
					dataInputStream.close();
					dataOutputStream.close();
					System.exit(0);
				} catch (IOException e1) {
					e1.printStackTrace();
				}
			}
		});
		
		
		sendButton.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				try {
					String message = inputField.getText();
					dataOutputStream.writeUTF(message);
					dataOutputStream.flush();	
				} catch (IOException e1) {
					e1.printStackTrace();
				}
			}
		});
	}

	public static void main(String[] args) {
		new Client();
	}
}

class receiveThread extends Thread {
	DataInputStream dataInputStream;
	JTextArea displayArea;
	public receiveThread(DataInputStream dataInputStream, JTextArea displayArea) {
		this.dataInputStream = dataInputStream;
		this.displayArea = displayArea;
	}
	
	public void run() {
		while (true) {
			try {
				String message = dataInputStream.readUTF();
				displayArea.setText(message + "\n" + displayArea.getText());
			} catch (IOException e) {
				return;
			}
		}
	}
	
}
