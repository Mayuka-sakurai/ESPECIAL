package com.especial.SVC;


import java.util.ArrayList;
import java.util.List;

import com.especial.BoardDAO.BoardDAO;

import com.especial.VO.BoardBean;


public class BoardDeleteProService {

	public List<BoardBean> isArticleWriter(int room_review_no) throws Exception {

		BoardDAO boardDAO = new BoardDAO();
		BoardDAO.getinstance();
		List<BoardBean> writerInfo = new ArrayList<BoardBean>();
		writerInfo = boardDAO.isArticleBoardWriter(room_review_no);

		// 글쓴이의 id 반환
		
		return writerInfo;
		
	}

	public boolean removeArticle(int room_review_no) throws Exception{
		// TODO Auto-generated method stub
		
		boolean isRemoveSuccess = false;
		BoardDAO boardDAO = BoardDAO.getinstance();
		int deleteCount = boardDAO.deleteArticle(room_review_no);
		System.out.println(room_review_no);
		System.out.println("****************"+deleteCount);
		
		if(deleteCount == 1) {
			isRemoveSuccess = true;
		}else {
			System.out.println("삭제실패");
		}

		return isRemoveSuccess;
	}

}
