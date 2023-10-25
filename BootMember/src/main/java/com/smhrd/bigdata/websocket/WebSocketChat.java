package com.smhrd.bigdata.websocket;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

import javax.websocket.OnClose;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

import org.springframework.stereotype.Service;

@Service
@ServerEndpoint(value="/chat")
public class WebSocketChat {
	
	// 새로운 클라이언트가 접속할 때마다, 클라이언트의 세션 관련 정보를 정적형으로 저장한다 
	// 1:N의 통신이 가능하도록 한다
	private static Set<Session> clients = 
			Collections.synchronizedSet(new HashSet<Session>());

	// 클라이언트가 접속할 때 발생하는 이벤트를 정의한다
	@OnOpen
	public void onOpen(Session s) {
		System.out.println("open session : " + s.toString());
		if(!clients.contains(s)) {
			clients.add(s);
			System.out.println("session open : " + s);
		}else {
			System.out.println("이미 연결된 session 임!!!");
		}
	}
	
	// 메시지가 수신 되었을 때를 정의한다
	@OnMessage
	public void onMessage(String msg, Session session) throws Exception{
		System.out.println("receive message : " + msg);
		for(Session s : clients) {
			System.out.println("send data : " + msg);
			s.getBasicRemote().sendText(msg);

		}
		
	}
	
	// 클라언트가 브라우저를 끄거나 다른 경로로 이동할 때를 정의한다
	@OnClose
	public void onClose(Session s) {
		System.out.println("session close : " + s);
		clients.remove(s);
	}
}
