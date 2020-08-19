package com.especial.SVC;

import java.util.List;

import com.especial.BoardDAO.REVIEW_BoardDAO;
import com.especial.VO.BoardBean;



public class BoardDetailService {

	public List<BoardBean> getArticle(int room_review_no) throws Exception{

		List<BoardBean> article = null;
		REVIEW_BoardDAO boardDAO = REVIEW_BoardDAO.getinstance();

		int readCount = boardDAO.updateReadCount(room_review_no);
		System.out.println("������ ����ī��Ʈ"+readCount);
		article = boardDAO.selectArticle(room_review_no);
		
		System.out.println("������ ������ ��ƼŬ"+article);

		return article;

	}

}
