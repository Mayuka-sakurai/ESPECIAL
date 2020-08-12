package com.especial.Action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.especial.SVC.BoardDetailService;
import com.especial.VO.ActionForward;
import com.especial.VO.BoardBean;

public class BoardModifyFormAction implements Action {
	
	 public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception{
		 
		 	BoardDetailService boardDetailService = new BoardDetailService();	
		 	
		 	int room_review_no = Integer.parseInt(request.getParameter("room_review_no"));
		 	
		 	// �α��� ���� session�� ����� ��й�ȣ ȹ��
		 	
		 	String userid = request.getParameter("pw");
		 	ActionForward forward = new ActionForward();
		 	
		 	List<BoardBean> article = new ArrayList<BoardBean>();
		 	article = boardDetailService.getArticle(room_review_no);
		 	
		   	request.setAttribute("article", article);
	   		forward.setPath("/review_modify.jsp");
	   	
		   	return forward;
	   		
	 }
	 
}