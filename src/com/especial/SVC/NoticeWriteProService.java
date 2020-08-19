package com.especial.SVC;

import com.especial.BoardDAO.NOTICE_BoardDAO;
import com.especial.VO.NoticeBean;



public class NoticeWriteProService {

	public boolean registArticle(NoticeBean noticeBean) throws Exception{
		
		boolean isWriteSuccess = false;
	
		NOTICE_BoardDAO noticeDAO = NOTICE_BoardDAO.getinstance();
		noticeDAO = new NOTICE_BoardDAO();
		int notice_no = 0;
		
		notice_no = noticeDAO.articleNumber();
		noticeBean.setNotice_no(notice_no);
	
		
		int insertCount = noticeDAO.insertArticle(noticeBean);
		
		if(insertCount > 0){
			
			isWriteSuccess = true;
		}
		else{
			
		}
		
	

		return isWriteSuccess;
		
	}

}
