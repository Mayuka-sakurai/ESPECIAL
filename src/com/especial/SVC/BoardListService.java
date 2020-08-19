package com.especial.SVC;

import java.sql.ResultSet;
import java.util.List;

import com.especial.BoardDAO.REVIEW_BoardDAO;
import com.especial.VO.BoardBean;


public class BoardListService {

	public int getListCount() throws Exception{
		
		int listCount = 0;

		REVIEW_BoardDAO boardDAO = REVIEW_BoardDAO.getinstance();
	
		listCount = boardDAO.selectListCount();
		
		System.out.println("listcount" +listCount);
		
		
		return listCount;
		
	}

	public List<BoardBean> getArticleList(int page, int limit) throws Exception{
		
		List<BoardBean> articleList = null;

		REVIEW_BoardDAO boardDAO = REVIEW_BoardDAO.getinstance();

		articleList = boardDAO.selectArticleList(page, limit);
		System.out.println("articlelist = "+ articleList);
		
		return articleList;
		
	}

	public int getHotelArticleCount() {
		
		REVIEW_BoardDAO boardDAO = REVIEW_BoardDAO.getinstance();
		
		int hotelcount = boardDAO.hotelCount();
		System.out.println("hotelcount" + hotelcount);
		return hotelcount;
	}
	
	public int getFacilityArticleCount() {
		REVIEW_BoardDAO boardDAO = REVIEW_BoardDAO.getinstance();
		
		int facilityCount = boardDAO.facilityCount();
		System.out.println("facility" + facilityCount);
		return facilityCount;
	}
	
	public int getHallArticleCount() {
		REVIEW_BoardDAO boardDAO = REVIEW_BoardDAO.getinstance();
		
		int hallcount = boardDAO.hallcount();
		
		return hallcount;
	}
}
