package com.especial.SVC;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import com.especial.BoardDAO.BoardDAO;
import com.especial.VO.BoardBean;


public class BoardModifyProService {

	public List<BoardBean> isArticleWriter(int room_review_no) throws Exception {
		boolean isArticleWriter = false;
		
		BoardDAO boardDAO = BoardDAO.getinstance();
		List<BoardBean> userInfo = new ArrayList<BoardBean>();
		// 글 작성자의 information get
		userInfo = boardDAO.isArticleBoardWriter(room_review_no);

		return userInfo;
		
	}

	public boolean modifyArticle(BoardBean article) throws Exception {
		
		boolean isModifySuccess = false;
		BoardDAO boardDAO = BoardDAO.getinstance();
		
		
		int updateCount = boardDAO.updateArticle(article);
	
		return isModifySuccess;
		
	}

}
