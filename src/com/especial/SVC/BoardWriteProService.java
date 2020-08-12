package com.especial.SVC;

import com.especial.BoardDAO.BoardDAO;
import com.especial.VO.BoardBean;



public class BoardWriteProService {

	public boolean registArticle(BoardBean boardBean) throws Exception{
		
		boolean isWriteSuccess = false;
	
		BoardDAO boardDAO = BoardDAO.getinstance();
		boardDAO = new BoardDAO();
		int room_review_no = 0;
		
		room_review_no = boardDAO.articleNumber();
		boardBean.setRoom_review_no(room_review_no);
	
		
		int insertCount = boardDAO.insertArticle(boardBean);
		
		if(insertCount > 0){
			
			isWriteSuccess = true;
		}
		else{
			
		}
		
	

		return isWriteSuccess;
		
	}

}
