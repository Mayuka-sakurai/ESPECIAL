package com.especial.BoardDAO;

import java.io.IOException;
import java.io.Reader;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.especial.VO.BoardBean;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class BoardDAO {

	Connection con;
	SqlSessionFactory sqlfactory;

	private static BoardDAO instance;

	public static BoardDAO getinstance() {
		if(instance == null) {
			synchronized (BoardDAO.class) {
				instance = new BoardDAO();
			}
		}
		return instance;
	}


	public BoardDAO() {
		try {
			Reader reader = Resources.getResourceAsReader("mybatis-config.xml");
			sqlfactory = new SqlSessionFactoryBuilder().build(reader);
		} catch (IOException e) {

			e.printStackTrace();
		}

	}



	// article 번호 등록(Write)

	public int articleNumber() {

		int listCount = 0;
		int count = 0;
		SqlSession sqlsession = sqlfactory.openSession();


		try {

			count = sqlsession.selectOne("listCount");

			if(count > 0) {

				listCount = count + 1;

			}else {
				listCount = 1;
			}
		} catch (Exception e) {
			e.printStackTrace();

		}

		return listCount;
	}

	// article 등록

	public int insertArticle (BoardBean boardBean) {

		SqlSession sqlsession = sqlfactory.openSession();

		int count = sqlsession.insert("insertArticle",boardBean);
		sqlsession.commit();
		sqlsession.close();
		return count;
	}

	// List view에서 사용되는 ListCount

	public int selectListCount() {	

		int listcount = 0;

		SqlSession sqlsession = sqlfactory.openSession();


		listcount = sqlsession.selectOne("selectListCount");
		sqlsession.close();
		
		return listcount;
	}

	// 전체 article 가져오기 (List View)
	public List<BoardBean> selectArticleList (int page, int limit) {

		List<BoardBean> articleList = new ArrayList<BoardBean>();

		SqlSession sqlsession = sqlfactory.openSession();


		int startrow = (page-1)*10;

		articleList = sqlsession.selectList("selectArticleList", startrow);
		System.out.println(articleList);
		sqlsession.close();
		
		return articleList;

	}

	// 글 클릭시 확인되는 article 개별

	public List<BoardBean> selectArticle (int room_review_no) {


		SqlSession sqlsession = sqlfactory.openSession();
		List<BoardBean> article = new ArrayList<BoardBean>();

		article = sqlsession.selectList("selectArticle",room_review_no);
		sqlsession.close();
		System.out.println(article);
		
		return article;
	}

	// 클릭시 readcount 증가처리
	public int updateReadCount(int room_review_no) {
		SqlSession sqlsession = sqlfactory.openSession();

		int readcount = 0;

		readcount = sqlsession.update("updateReadCount", room_review_no);

		System.out.println("dao readcount" + readcount);
		sqlsession.commit();
		sqlsession.close();
		
		return readcount;
	}


	public int hotelCount() {
		SqlSession sqlsession = sqlfactory.openSession();

		int hotelcount = 0;

		hotelcount = sqlsession.selectOne("hotelArticleCount");
		sqlsession.close();

		return hotelcount;
	}

	public int facilityCount() {
		SqlSession sqlsession = sqlfactory.openSession();

		int facilitycount = 0;

		facilitycount = sqlsession.selectOne("facilityArticleCount");
		sqlsession.close();
		return facilitycount;
	}

	public int hallcount() {
		SqlSession sqlsession = sqlfactory.openSession();

		int hallcount = 0;

		hallcount = sqlsession.selectOne("hallArticleCount");
		sqlsession.close();
		return hallcount;
	}

	// 글쓴이의 아이디와 비밀번호 get
	public List<BoardBean> isArticleBoardWriter(int room_review_no) {

		SqlSession sqlsession = sqlfactory.openSession();

		List<BoardBean> wirterInfo = new ArrayList<BoardBean>();

		wirterInfo = sqlsession.selectList("isArticleBoardWriter", room_review_no);
		
		sqlsession.close();

		return wirterInfo;
	}


	public List<BoardBean> updateArticle(BoardBean article) {
		SqlSession sqlsession = sqlfactory.openSession();
		
		List<BoardBean> updateArticle = new ArrayList<BoardBean>();
		
		updateArticle = sqlsession.selectList("updateArticle", article);
		sqlsession.commit();
		sqlsession.close();
		
		return updateArticle;
	}
	

		public int deleteArticle(int room_review_no){
			int deleteCount = 0;
			
			SqlSession sqlsession = sqlfactory.openSession();
			
			deleteCount = sqlsession.delete("deleteArticle", room_review_no);
			
			sqlsession.commit();
			sqlsession.close();
			
			return deleteCount;
		}
	
	
	//	public int insertReplyArticle(BoardBean article) {
	//		return 0;
	//	}
	//
}
