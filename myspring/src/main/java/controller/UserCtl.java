package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import dto.UserDTO;
import service.UserService;

@Controller
public class UserCtl {

	private UserService UserService;

	public UserCtl() {

	}

	public UserService getUserService() {
		return UserService;
	}

	public void setService(UserService UserService) {
		this.UserService = UserService;
	}

	@RequestMapping("/index.htm")
	public String indexLoad() {
		return "index";
	}// end login
	
	@RequestMapping("/login.htm")
	public String login() {
		return "user/login";
	}// end login

	@RequestMapping("/join.htm")
	public String joinFrom() {
		return "user/join";
	}// end joinFrom
	
	@RequestMapping("/join1.htm")
	public String joinFrom1() {
		return "user/join1";
	}// end joinFrom

	@RequestMapping("/idCheck.do")
	public ModelAndView idChkMethod(String user_id) {
		ModelAndView mav = new ModelAndView();

		System.out.println(user_id);
		int cnt = UserService.idChkProc(user_id);

		mav.addObject("chkVal", cnt);
		mav.setViewName("user/ajaxUser");

		return mav;

	}// end idChkMethod

	@RequestMapping(value = "/userJoin.do", method = RequestMethod.POST)
	public ModelAndView joinMethod(UserDTO dto, HttpServletRequest request) {

		ModelAndView mav = new ModelAndView();
		dto.setIp(request.getRemoteAddr());
		
		//request.getParameter("user_email")+"@"+request.getParameter("select_domain")
		
	
		UserService.userJoinProc(dto);

		mav.setViewName("redirect:/login.htm");
		return mav;
	}
	@RequestMapping(value="login.do", method= RequestMethod.POST)
	public ModelAndView loginProc(String user_id, String user_pwd, HttpServletRequest request){
		
		ModelAndView mav = new ModelAndView();
		HttpSession session = request.getSession();
	
		System.out.println(user_id + "   "+ user_pwd);
		
		UserDTO dto =  UserService.loginProc(user_id, user_pwd);
		
		try{
			if(!(dto.getUser_id().equals(null)))
				session.setAttribute("s_user_name", dto.getUser_name());
				session.setAttribute("s_user_id", dto.getUser_id());
				session.setAttribute("s_user_idx", dto.getUser_idx());
				session.setAttribute("s_user_email", dto.getUser_email());
				
				
				mav.setViewName("redirect:index.htm");
		} catch (Exception e){
	
	
			mav.setViewName("redirect:/login.htm");
		}

		return mav;
		
	}
}
