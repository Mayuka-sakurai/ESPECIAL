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
	// ���� ��ü���� ����� ���ؼ� private static����  ����
	private static Member_dao instance;

	// getinstance()�� ���� ��ü �������µ�, instance��ü�� null�̸� �űԷ� �����ϰ�, �ƴϸ� instance ������
	
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
		



	


	// ȸ�� ���� ó��
	
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

	// �α��� 
	
	public List<Member_dto>logincheck(String id){
		

		SqlSession sqlsession = sqlfactory.openSession();
		List<Member_dto> result = sqlsession.selectList("logincheck", id);
		
		sqlsession.close();
	
		return result;
		
		
	}
	
	
	
	
//
//// ȸ�� ���̵� �Է°� �ߺ� üũ for ajax
//
//	public int checkID(String id) {
//		SqlSession sqlsession = sqlfactory.openSession();
//		
//		// id���� �Ű��� ó���ؼ� ���ϰ��� �ִ��� �������� Ȯ���Ѵ�.
//		
//		int result = sqlsession.selectOne("checkId",id);
//		
//		sqlsession.close();
//		
//		return result;
//	}

}// End All

// read  ȸ�� ��ȸ
// ȸ����ȸ�� admin page���� ������ �������� ������ �������� ����

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
//	// update ȸ�� ���� ����
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
//	// delete ȸ�� ���� ����
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

