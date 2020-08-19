package com.especial.SVC;

import java.util.List;

import com.especial.BoardDAO.REVIEW_BoardDAO;
import com.especial.VO.BoardBean;



public class BoardDetailService {

	public List<BoardBean> getArticle(int room_review_no) throws Exception{

		List<BoardBean> article = null;
		REVIEW_BoardDAO boardDAO = REVIEW_BoardDAO.getinstance();

		int readCount = boardDAO.updateReadCount(room_review_no);
		System.out.println("디테일 리드카운트"+readCount);
		article = boardDAO.selectArticle(room_review_no);
		
		System.out.println("수정후 디테일 아티클"+article);

		return article;

	}

}
