package service;

import java.util.List;

import dto.UserDTO;

public interface UserService {
	public int idChkProc(String user_id);
	public void userJoinProc(UserDTO dto);
	public UserDTO loginProc(String user_id, String user_pwd);
	
}
