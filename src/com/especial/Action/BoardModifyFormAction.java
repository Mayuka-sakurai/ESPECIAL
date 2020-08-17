package com.especial.Action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.especial.SVC.BoardDetailService;
import com.especial.VO.ActionForward;
import com.especial.VO.BoardBean;

public class BoardModifyFormAction implements Action {

	public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception{
		System.out.println("ModifyFromAction 도착");
		String userid = null;
		String userpw = null;
		ActionForward forward = new ActionForward();
		BoardDetailService boardDetailService = new BoardDetailService();	


		int room_review_no = Integer.parseInt(request.getParameter("room_review_no"));

		System.out.println("modify Action room번호" + room_review_no);
		List<BoardBean> article = new ArrayList<BoardBean>();
		article = boardDetailService.getArticle(room_review_no);

		// 로그인 이후 session에 저장된 비밀번호 획득
		HttpSession session = request.getSession();
		userid = (String)session.getAttribute("id");
		userpw = (String)session.getAttribute("pw");

		String dbid = article.get(0).getMember_id();
		String dbpw = article.get(0).getMember_password();

		if(dbid.equals(userid)) {
			if(dbpw.equals(userpw)) {

				request.setAttribute("article", article);
				forward.setPath("/review_modify.jsp");
			}
		}
		return forward;


	}

}