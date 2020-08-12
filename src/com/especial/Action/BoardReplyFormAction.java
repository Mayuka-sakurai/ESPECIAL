package com.especial.Action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.especial.SVC.BoardDetailService;
import com.especial.VO.ActionForward;
import com.especial.VO.BoardBean;


public class BoardReplyFormAction implements Action {
	
	 public ActionForward execute(HttpServletRequest request,HttpServletResponse response) 
	 	throws Exception{
		 
		 	ActionForward forward = new ActionForward();
	   		String nowPage = request.getParameter("page");
	   		int room_review_no = Integer.parseInt(request.getParameter("room_review_no"));
	   		BoardDetailService boardDetailService = new BoardDetailService();
	   		BoardBean article=boardDetailService.getArticle(room_review_no);	
	   		request.setAttribute("article", article);
	   		request.setAttribute("page", nowPage);
	   //		forward.setPath("/qna_board_reply.jsp");
	   		return forward;
	   		
	}
	 
}