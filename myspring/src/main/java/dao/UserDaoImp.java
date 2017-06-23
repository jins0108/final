package dao;


import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import dto.UserDTO;

public class UserDaoImp implements UserDAO{
	private SqlSessionTemplate SqlSession;

	public UserDaoImp() {

	}
	
	
	public SqlSessionTemplate getSqlSession() {
		return SqlSession;
	}


	public void setSqlSession(SqlSessionTemplate sqlSession) {
		SqlSession = sqlSession;
	}


	@Override
	public void userJoin(UserDTO dto) {
		System.out.println("userJoin dao imp");
		SqlSession.insert("user.userJoin", dto);
	}


	@Override
	public int idChk(String user_id) {
		return SqlSession.selectOne("user.idChk", user_id);
	}


	@Override
	public UserDTO loginChk(HashMap<String, Object> map) {
		
		
		return SqlSession.selectOne("user.loginChk",map);
	}


}
