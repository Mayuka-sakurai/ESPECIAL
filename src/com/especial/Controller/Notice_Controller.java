package com.especial.Controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.especial.Action.Action;
import com.especial.Action.BoardListAction;
import com.especial.Action.BoardWriteProAction;
import com.especial.Action.BoardDeleteProAction;
import com.especial.Action.BoardDetailAction;
import com.especial.Action.BoardModifyFormAction;
import com.especial.Action.BoardModifyProAction;
import com.especial.Action.BoardReplyFormAction;
import com.especial.Action.BoardReplyProAction;

import com.especial.VO.ActionForward;


@WebServlet("*.room")
public class Notice_Controller extends javax.servlet.http.HttpServlet 
{
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		String RequestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = RequestURI.substring(contextPath.length());
		ActionForward forward = null;
		Action action = null;
		
		
		if(command.equals("/Room_review.room")) {
			
			forward = new ActionForward();
			forward.setPath("/room_reviewedit.jsp");
			
		}else if(command.equals("/review_insert.room")){
			// review �ű� �ۼ��� BoardWritheProAction���� forward �̵�
			action = new BoardWriteProAction();
			
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		}else if(command.equals("/room_reviewList.room")) {
			action = new BoardListAction();
			
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else if(command.equals("/room-List.room")) {
			forward = new ActionForward();
			forward.setPath("/room_reviewList.jsp");
		}
		
		else if(command.equals("/reviewDetail.room")) {
			action = new BoardDetailAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		
		}else if (command.equals("/room_delete.room")) {
			
			String nowPage = request.getParameter("page");
			request.setAttribute("page", nowPage);
			int room_review_no = Integer.parseInt(request.getParameter("room_review_no"));
			request.setAttribute("room_review_no", room_review_no);
		
			forward = new ActionForward();
			forward.setPath("/review_delete.jsp");
					
		}else if(command.equals("/room_deletePro.room")) {
			action = new BoardDeleteProAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else if(command.equals("/room_modifypro.room")) {
		
			System.out.println("��Ʈ�Ѻκ�pro "+request.getParameter("room_review_no"));
			action = new BoardModifyProAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else if(command.equals("/room_ModifyForm.room")) {
			System.out.println("��Ʈ�Ѻκ�form"+request.getParameter("room_review_no"));
			action = new BoardModifyFormAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}


		
		if(forward != null){
			
			if(forward.isRedirect()){
				response.sendRedirect(forward.getPath());
			}else{
				RequestDispatcher dispatcher=request.getRequestDispatcher(forward.getPath());
				dispatcher.forward(request, response);
			}
			
		}
		
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		doProcess(request,response);
	}  	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		doProcess(request,response);
	}   
	
}