package com.especial.Action;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.especial.SVC.BoardModifyProService;
import com.especial.VO.ActionForward;
import com.especial.VO.BoardBean;


public class BoardModifyProAction implements Action {

	public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception{
		System.out.println("modify도착함!!!!!!!!!!!!!!!!!!!!!!!!!!");
		int room_review_no = 0;
		ActionForward forward = null;
		boolean isModifySuccess = false;
		System.out.println("리뷰번호"+room_review_no);
		room_review_no=Integer.parseInt(request.getParameter("room_review_no"));
		HttpSession session = request.getSession();
		String userid = (String)session.getAttribute("id");
		String userpw = (String)session.getAttribute("pw");
		System.out.println("userid=-----"+userid);
		if( room_review_no == 0) {
			room_review_no = 1;
		}		

		BoardBean article = new BoardBean();
		BoardModifyProService boardModifyProService = new BoardModifyProService();
		
		// 글 작성자의 db 내용 
		ArrayList<BoardBean> userinfo = new ArrayList<BoardBean>();
		userinfo = (ArrayList<BoardBean>) boardModifyProService.isArticleWriter(room_review_no);
		
		String dbid = userinfo.get(0).getMember_id();
		String dbpw = userinfo.get(0).getMember_password();

		Boolean isRightUser = false;

		if(userid.equals(dbid)) {
			if(userpw.equals(dbpw)) {
				isRightUser = true;
				article.setRoom_review_no(room_review_no);
				article.setRoom_review_title(request.getParameter("texttitle"));
				article.setRoom_review_contents(request.getParameter("contents"));
				isModifySuccess = boardModifyProService.modifyArticle(article);
				
				forward = new ActionForward();
				forward.setRedirect(true);
				forward.setPath("reviewDetail.room?room_review_no="+article.getRoom_review_no());
			}
		}


		System.out.println("modifypro" + room_review_no);

		if(isRightUser =false) {

			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('본인이 작성한 글만 수정이 가능합니다');");
			out.println("history.back();");
			out.println("</script>");
		}else if(!isModifySuccess) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('수정실패');");
			out.println("history.back()");
			out.println("</script>");
		}



		return forward;
	}

}