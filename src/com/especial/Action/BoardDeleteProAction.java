package com.especial.Action;

import java.io.PrintWriter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.especial.SVC.BoardDeleteProService;
import com.especial.VO.ActionForward;


public class BoardDeleteProAction implements Action {

	public ActionForward execute(HttpServletRequest request,HttpServletResponse response) 
			throws Exception{	 
		
		ActionForward forward = null;
		int room_review_no = Integer.parseInt(request.getParameter("room_review_no"));
		String nowPage = request.getParameter("page");
		BoardDeleteProService boardDeleteProService = new BoardDeleteProService();
		HttpSession session = request.getSession();
		
		boolean isArticleWriter = boardDeleteProService.isArticleWriter(room_review_no,(String)session.getAttribute("pw"));

		if(!isArticleWriter){
			
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('삭제할 권한이 없습니다');");
			out.println("history.back();");
			out.println("</script>");
			out.close();
			
		}

		else{
			
			boolean isDeleteSuccess = boardDeleteProService.removeArticle(room_review_no);

			if(!isDeleteSuccess){
				response.setContentType("text/html;charset=UTF-8");
				PrintWriter out = response.getWriter();
				out.println("<script>");
				out.println("alert('삭제실패');");
				out.println("history.back();");
				out.println("</script>");
				out.close();
			}
			else{
				forward = new ActionForward();
				forward.setRedirect(true);
				forward.setPath("room_reviewList.room?page=" + nowPage);
			}
			
		}


		return forward;
	}

}