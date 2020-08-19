package com.especial.SVC;

import com.especial.BoardDAO.REVIEW_BoardDAO;
import com.especial.VO.BoardBean;



public class BoardWriteProService {

	public boolean registArticle(BoardBean boardBean) throws Exception{
		
		boolean isWriteSuccess = false;
	
		REVIEW_BoardDAO boardDAO = REVIEW_BoardDAO.getinstance();
		boardDAO = new REVIEW_BoardDAO();
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
