package com.especial.Action;

import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import com.especial.SVC.BoardWriteProService;
import com.especial.VO.ActionForward;
import com.especial.VO.BoardBean;
import com.especial.BoardDAO.BoardDAO;


public class BoardWriteProAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception{

		ActionForward forward = null;
		BoardBean boardBean = null;
		String realFolder = "";
		String saveFolder = "/userfile";
		int fileSize = 5*1024*1024;
		ServletContext context = request.getServletContext();
		realFolder = context.getRealPath(saveFolder);
		MultipartRequest multi = new MultipartRequest(request, realFolder, fileSize, "UTF-8", new DefaultFileRenamePolicy());
		
		//jsp ���ǰ� http������ �ٸ��⶧����, httpsession�� ��ü�� ������ ����, �� �������� ����� �����ϴ�.
		HttpSession session = request.getSession();

		
		boardBean = new BoardBean();
		boardBean.setRoom_review_category(multi.getParameter("category"));
		boardBean.setRoom_review_title(multi.getParameter("texttitle"));
		boardBean.setRoom_review_contents(multi.getParameter("content"));
		
		// ���ǿ� ��ϵǾ��� ���� �������� ��� > �Ϲ� session.get���� �޾ƿ��� �ȴ�. ������ ����Ǵ� ��� multi�� �޾���!
		boardBean.setMember_id((String)session.getAttribute("id"));
		boardBean.setMember_password((String)session.getAttribute("pw"));
		boardBean.setRoom_review_file(multi.getOriginalFileName((String)multi.getFileNames().nextElement()));
	
		BoardWriteProService boardWriteProService = new BoardWriteProService();
		boolean isWriteSuccess = boardWriteProService.registArticle(boardBean);
		System.out.println(isWriteSuccess);

		
		if(isWriteSuccess = false) {
			
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			
			out.println("<script>");
			out.println("alert('��Ͻ���')");
			out.println("history.back();");
			out.println("</script>");
					
		}else{
			forward = new ActionForward();
			forward.setRedirect(true);
			forward.setPath("room_reviewList.room");
			
		}
		
		
		return forward;

	}

	

}