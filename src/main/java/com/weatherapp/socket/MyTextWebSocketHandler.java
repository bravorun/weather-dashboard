package com.weatherapp.socket;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;
 
public class MyTextWebSocketHandler extends TextWebSocketHandler {
 
    private static final Logger LOGGER = LoggerFactory.getLogger(MyTextWebSocketHandler.class);
    
    private final List<WebSocketSession> sessions = new CopyOnWriteArrayList<>();
 
    @Override
    public void afterConnectionEstablished(WebSocketSession session) throws Exception {
        sessions.add(session);
        super.afterConnectionEstablished(session);
    }
 
    @Override
    public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
        sessions.remove(session);
        super.afterConnectionClosed(session, status);
    }
 
    @Override
    protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
        super.handleTextMessage(session, message);
        sessions.forEach(webSocketSession -> {
            try {
            	System.out.println("Received data"+ message.getPayload());
            	String datas[]=(message.getPayload().split("@"));
            	ArrayList<Float> d=new ArrayList<Float>();
            	for(String data:datas) {
            		d.add(Float.parseFloat(data));
            		
            	}
            	for(int i=0;i<=2;i++) {
            		System.out.println(d.get(i));
            	} 
                //webSocketSession.sendMessage(message);
            } catch (Exception e) {
                LOGGER.error("Error occurred.", e);
            }
        });
    }
}