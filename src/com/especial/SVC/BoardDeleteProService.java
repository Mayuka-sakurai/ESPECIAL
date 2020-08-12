package com.especial.SVC;


import com.especial.BoardDAO.BoardDAO;
import java.sql.Connection;


public class BoardDeleteProService {

	public boolean isArticleWriter(int room_review_no, String member_pw) throws Exception {
		// TODO Auto-generated method stub
		
		boolean isArticleWriter = false;

		BoardDAO boardDAO = new BoardDAO();
		BoardDAO.getinstance();
		
		isArticleWriter = boardDAO.isArticleBoardWriter(room_review_no, member_pw);

		return isArticleWriter;
		
	}

	public boolean removeArticle(int room_review_no) throws Exception{
		// TODO Auto-generated method stub
		
		boolean isRemoveSuccess = false;
		BoardDAO boardDAO = BoardDAO.getinstance();
		int deleteCount = boardDAO.deleteArticle(room_review_no);
		
		
//		if(deleteCount > 0){
//			commit(con);
//			isRemoveSuccess = true;
//		}
//		else{
//			rollback(con);
//		}
//		
//		close(con);
		return isRemoveSuccess;
	}

}
