package com.especial.MemberDAO;

import java.io.IOException;
import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import com.especial.MemberDTO.Member_dto;


public class Member_dao {

	SqlSessionFactory sqlfactory;
	// 전역 객체변수 사용을 위해서 private static으로  생성
	private static Member_dao instance;

	// getinstance()로 생성 객체 가져오는데, instance자체가 null이면 신규로 생성하고, 아니면 instance 리턴함
	
	public static Member_dao getinstance() {
		if(instance == null) {
			synchronized (Member_dao.class) {
				instance = new Member_dao();
			}
		}
		return instance;
	}
	
	
	public Member_dao() {
		
		try {
			Reader reader = Resources.getResourceAsReader("mybatis-config.xml");
			sqlfactory = new SqlSessionFactoryBuilder().build(reader);
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
		



	


	// 회원 가입 처리
	
	public boolean joinmember(Member_dto dto) {

		SqlSession sqlsession = sqlfactory.openSession();
		boolean isNewMember = false;
		
		int resultcount = sqlsession.insert("joinmember",dto);
		
		sqlsession.commit();
		sqlsession.close();
		
		if(resultcount == 1) {
			isNewMember = true;
		}else {
			isNewMember = false;
		}
		
		return isNewMember;

	}

	// 로그인 
	
	public List<Member_dto>logincheck(String id){
		

		SqlSession sqlsession = sqlfactory.openSession();
		List<Member_dto> result = sqlsession.selectList("logincheck", id);
		
		sqlsession.close();
	
		return result;
		
		
	}
	
	
	
	
//
//// 회원 아이디 입력값 중복 체크 for ajax
//
//	public int checkID(String id) {
//		SqlSession sqlsession = sqlfactory.openSession();
//		
//		// id값을 매개로 처리해서 동일값이 있는지 없는지를 확인한다.
//		
//		int result = sqlsession.selectOne("checkId",id);
//		
//		sqlsession.close();
//		
//		return result;
//	}

}// End All

// read  회원 조회
// 회원조회는 admin page에서 생성할 예정으로 지금은 생성하지 않음

//	public List<Join_dto> read(){
//		
//		SqlSession sqlsession = sqlfactory.openSession();
//		List<Join_dto> result = sqlsession.selectList("read");
//		sqlsession.close();
//		
//		return result;
//		
//		
//	}
//	
//	
//	// update 회원 정보 수정
//	
//	
//	public void update() {
//		
//		SqlSession sqlsession = sqlfactory.openSession();
//		
//		sqlsession.update("update", );
//		
//		sqlsession.commit();
//		sqlsession.close();
//	}
//	
//	
//	// delete 회원 정보 삭제
//	
//	
//	public void delete() {
//		
//		SqlSession sqlsession = sqlfactory.openSession();
//		
//		sqlsession.delete("delete", join_dto);
//		
//		sqlsession.commit();
//		sqlsession.close();
//	}

