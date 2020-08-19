package com.especial.SVC;

import static com.especial.DBconn.JdbcUtil.*;

import java.sql.Connection;
import com.especial.BoardDAO.REVIEW_BoardDAO;

import com.especial.VO.BoardBean;


public class BoardReplyProService {

	public boolean replyArticle(BoardBean article) throws Exception{
		
		boolean isReplySuccess = false;
		int insertCount = 0;
		Connection con = getConnection();
		REVIEW_BoardDAO boardDAO = REVIEW_BoardDAO.getinstance();

	
		insertCount = boardDAO.insertReplyArticle(article);
		
		if(insertCount > 0){
			commit(con);
			isReplySuccess = true;
		}
		else{
			rollback(con);
		}
		
		close(con);
		return isReplySuccess;
		
	}

}
