package service;

import dao.BoardDao;
import dao.BoardDaoImpl;

public class BoardServiceImpl implements BoardService {
		
	private BoardDao boardDao;//서비스에서는 저장소를 사용 
	
		//싱글톤 패턴 적용 		
		private BoardServiceImpl() {
			boardDao = BoardDaoImpl.getInstance(); //Dao 객체 생성 
		}
		private static BoardService boardService;
		public static BoardService getInstance() {
			if(boardService == null) {
				boardService = new BoardServiceImpl();
			}
			return boardService;
		}
		
}
