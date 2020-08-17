package com.especial.SVC;

import java.sql.ResultSet;
import java.util.List;

import com.especial.BoardDAO.BoardDAO;
import com.especial.VO.BoardBean;


public class BoardListService {

	public int getListCount() throws Exception{
		
		int listCount = 0;

		BoardDAO boardDAO = BoardDAO.getinstance();
	
		listCount = boardDAO.selectListCount();
		
		System.out.println("listcount" +listCount);
		
		
		return listCount;
		
	}

	public List<BoardBean> getArticleList(int page, int limit) throws Exception{
		
		List<BoardBean> articleList = null;

		BoardDAO boardDAO = BoardDAO.getinstance();

		articleList = boardDAO.selectArticleList(page, limit);
		System.out.println("articlelist = "+ articleList);
		
		return articleList;
		
	}

	public int getHotelArticleCount() {
		
		BoardDAO boardDAO = BoardDAO.getinstance();
		
		int hotelcount = boardDAO.hotelCount();
		System.out.println("hotelcount" + hotelcount);
		return hotelcount;
	}
	
	public int getFacilityArticleCount() {
		BoardDAO boardDAO = BoardDAO.getinstance();
		
		int facilityCount = boardDAO.facilityCount();
		System.out.println("facility" + facilityCount);
		return facilityCount;
	}
	
	public int getHallArticleCount() {
		BoardDAO boardDAO = BoardDAO.getinstance();
		
		int hallcount = boardDAO.hallcount();
		
		return hallcount;
	}
}
