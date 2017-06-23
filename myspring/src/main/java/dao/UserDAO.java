package dao;

import java.util.HashMap;
import java.util.List;

import dto.UserDTO;

public interface UserDAO {
	public void	userJoin(UserDTO dto);
	public int idChk(String user_id);
	public UserDTO loginChk(HashMap<String, Object> map);

}
