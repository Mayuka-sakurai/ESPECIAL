package com.especial.SVC;


import java.util.ArrayList;
import java.util.List;

import com.especial.BoardDAO.BoardDAO;
import com.especial.VO.BoardBean;


public class BoardModifyProService {

	public List<BoardBean> isArticleWriter(int room_review_no) throws Exception {
		
		
		BoardDAO boardDAO = BoardDAO.getinstance();
		ArrayList<BoardBean> userInfo = new ArrayList<BoardBean>();
		// �� �ۼ����� information get
		userInfo = (ArrayList<BoardBean>) boardDAO.isArticleBoardWriter(room_review_no);
		
		return userInfo;
		
	}

	public boolean modifyArticle(BoardBean article) throws Exception {
		
		boolean isModifySuccess = false;
		BoardDAO boardDAO = BoardDAO.getinstance();
		
		
		List<BoardBean> temp = boardDAO.updateArticle(article);
		
		if(temp.size() == 1) {
			isModifySuccess = true;
		}
	
		return isModifySuccess;
		
	}

}
