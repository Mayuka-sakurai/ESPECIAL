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

		int room_review_no = 0;
		ActionForward forward = null;
		boolean isModifySuccess = false;

		room_review_no=Integer.parseInt(request.getParameter("room_review_no"));

		if( room_review_no == 0) {
			room_review_no = 1;
		}		

		//���ǿ� ��ϵ� ��й�ȣ�� �۾����� ��й�ȣ ��ġ Ȯ���ϱ�  --> userpw,id : ���� �α����� ���̵�� ��й�ȣ , dbpw,id : �۾����� ��й�ȣ�� ���̵�
		HttpSession session = request.getSession();
		String userid = (String)session.getAttribute("id");
		String userpw = (String)session.getAttribute("pw");
		Boolean isRightUser = false;

		BoardBean article = new BoardBean();

		BoardModifyProService boardModifyProService = new BoardModifyProService();
		List<BoardBean> userInfo = new ArrayList<BoardBean>();
		// �� �ۼ����� db ���� 
		userInfo = boardModifyProService.isArticleWriter(room_review_no);


		if((userInfo.get(0).getMember_id().equals(userid))) {
			if(userInfo.get(0).getMember_password().equals(userpw)) {
				isRightUser = true;
			}
		}

		if(!isRightUser) {

			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('������ �ۼ��� �۸� ������ �����մϴ�..');");
			out.println("history.back();");
			out.println("</script>");
		}else {
			article.setRoom_review_no(room_review_no);
			article.setRoom_review_title(request.getParameter("texttitle"));
			article.setRoom_review_contents(request.getParameter("contents"));
			isModifySuccess = boardModifyProService.modifyArticle(article);


			if(!isModifySuccess) {
				response.setContentType("text/html; charset=UTF-8");
				PrintWriter out = response.getWriter();
				out.println("<script>");
				out.println("alert('��������');");
				out.println("history.back()");
				out.println("</script>");
			}
		}


		return forward;
	}

}