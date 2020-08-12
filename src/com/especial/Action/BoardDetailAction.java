package com.especial.Action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.especial.SVC.BoardDetailService;
import com.especial.VO.ActionForward;
import com.especial.VO.BoardBean;




 public class BoardDetailAction implements Action {
	 
	 public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception{ 

		List<BoardBean> article = new ArrayList<BoardBean>();
		int room_review_no = Integer.parseInt(request.getParameter("room_review_no"));
		String page = request.getParameter("page");

		
		BoardDetailService boardDetailService = new BoardDetailService();
	
		 article = boardDetailService.getArticle(room_review_no);
		 System.out.println("article" + article);
		
		ActionForward forward = new ActionForward();

		request.setAttribute("page", page);
	   	request.setAttribute("article", article);
	   	
	   	System.out.println("boarddetail액션  page" + page);
	   	System.out.println("boarddetail액션  article" + article);
	   	
   		forward.setPath("/review_detail.jsp");
   		
   		return forward;

	 }
	 
}