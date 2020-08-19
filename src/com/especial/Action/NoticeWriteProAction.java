package com.especial.Action;

import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import com.especial.SVC.NoticeWriteProService;
import com.especial.VO.ActionForward;
import com.especial.VO.NoticeBean;
import com.especial.BoardDAO.NOTICE_BoardDAO;


public class NoticeWriteProAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception{

		ActionForward forward = null;
		NoticeBean noticeBean = null;
		String realFolder = "";
		String saveFolder = "/noticefile";
		int fileSize = 5*1024*1024;
		ServletContext context = request.getServletContext();
		realFolder = context.getRealPath(saveFolder);
		MultipartRequest multi = new MultipartRequest(request, realFolder, fileSize, "UTF-8", new DefaultFileRenamePolicy());
		
		//jsp 세션과 http세션은 다르기때문에, httpsession의 객체를 선언한 이후, 이 세션으로 사용이 가능하다.
		HttpSession session = request.getSession();

		
		noticeBean = new NoticeBean();
		noticeBean.setAdmin_id((String)session.getAttribute("id"));
		noticeBean.setAdmin_password((String)session.getAttribute("pw"));
		noticeBean.setNotice_category(multi.getParameter("category"));
		noticeBean.setNotice_title(multi.getParameter("title"));
		noticeBean.setNotice_contents(multi.getParameter("contents"));
		noticeBean.setNotice_file(multi.getOriginalFileName((String)multi.getFileNames().nextElement()));
		
		NoticeWriteProService noticeWriteProService = new NoticeWriteProService(); 
		boolean isWriteSuccess = noticeWriteProService.registArticle(noticeBean);
	
		System.out.println(isWriteSuccess);

		
		if(isWriteSuccess = false) {
			
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			
			out.println("<script>");
			out.println("alert('등록실패')");
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