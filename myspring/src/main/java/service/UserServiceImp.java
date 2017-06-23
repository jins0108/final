package service;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import dao.UserDAO;
import dto.UserDTO;

public class UserServiceImp implements UserService{

	private UserDAO userDao;
	
	public UserServiceImp() {
		
	}

	
	public void setUserDao(UserDAO userDao) {
		this.userDao = userDao;
	}


	@Override
	public int idChkProc(String user_id) {
		System.out.println(user_id);
		return userDao.idChk(user_id);
	}

	@Override
	public void userJoinProc(UserDTO dto) {
		System.out.println("userJoin imp");
		userDao.userJoin(dto);
		
	}


	@Override
	public UserDTO loginProc(String user_id, String user_pwd) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		map.put("user_id", user_id);
		map.put("user_pwd", user_pwd);
		
		return userDao.loginChk(map);
	}
	

}
