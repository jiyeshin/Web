package listener;

import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

public class SessionListener implements HttpSessionListener {
	static int cnt; //다 하나의 변수만 필요할 때는 static 으로 
	//세션이 생성될 때 호출되는 메소드 - 새로운 사용자가 접속
		@Override
		public void sessionCreated(HttpSessionEvent se) {
			cnt=cnt+1;
			System.out.println("새로운 사용자가 접속했습니다.");
			System.out.println(cnt + "명 접속중");
			
			
		}

		@Override
		public void sessionDestroyed(HttpSessionEvent se) {
			cnt=cnt-1;
			System.out.println("사용자가 접속을 해제했습니다.");
			System.out.println(cnt + "명 접속중");
		}

}
