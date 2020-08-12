package com.especial.Action;

import java.io.PrintWriter;
import java.util.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.especial.SVC.BoardListService;
import com.especial.VO.ActionForward;
import com.especial.VO.BoardBean;
import com.especial.VO.PageInfo;
import com.especial.VO.ReviewCount;



public class BoardListAction implements Action {

	public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception{

		List<BoardBean> articleList = new ArrayList<BoardBean>();

		int page = 1;
		int limit = 10;

		System.out.println("page " + page);
		if(request.getParameter("page") != null){

			page = Integer.parseInt(request.getParameter("page"));
		}


		BoardListService boardListService = new BoardListService();
		int listCount = boardListService.getListCount();
		System.out.println(listCount);
		articleList = boardListService.getArticleList(page, limit);

		System.out.println("articleList"+  articleList);
		int hotelCount = boardListService.getHotelArticleCount();
		int facilityCount = boardListService.getFacilityArticleCount();
		int hallCount = boardListService.getHallArticleCount();

		
		ReviewCount count = new ReviewCount();
		count.setHotel(hotelCount);
		count.setFacility(facilityCount);
//		count.setOffer(offer);
		count.setWedding_Conference(hallCount);
		
		
		
		System.out.println("hotelCount" + hotelCount);
		System.out.println("facilityCount" + facilityCount);
		System.out.println("hallCount" + hallCount);

	



		//총 페이지 수.
		int maxPage = (int)((double)listCount / limit + 0.95); //0.95를 더해서 올림 처리.

		//현재 페이지에 보여줄 시작 페이지 수(1, 11, 21 등...)
		int startPage = (((int) ((double)page / 10 + 0.9)) - 1) * 10 + 1;

		//현재 페이지에 보여줄 마지막 페이지 수.(10, 20, 30 등...)
		int endPage = startPage + 10 - 1;

		if (endPage > maxPage) endPage = maxPage;

		PageInfo pageInfo = new PageInfo();

		pageInfo.setEndPage(endPage);
		pageInfo.setListCount(listCount);
		pageInfo.setMaxPage(maxPage);
		pageInfo.setPage(page);
		pageInfo.setStartPage(startPage);	
		
		
		
		request.setAttribute("listcount", count);
		request.setAttribute("pageInfo", pageInfo); 
		request.setAttribute("articleList", articleList);
		
		System.out.println("pageinfo" + pageInfo);
		System.out.println(articleList);

		
//		response.setContentType("text/html; charset=UTF-8");
//		PrintWriter out = response.getWriter();
//
//		out.println("<input type = 'text' name = 'hotelcount' value = " + hotelCount + "/>");

		
		ActionForward forward = new ActionForward();

		forward.setPath("room-List.room");

		return forward;

	}

}