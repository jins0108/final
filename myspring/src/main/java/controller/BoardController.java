package controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.UUID;

import javax.jws.WebParam.Mode;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import dto.BoardDTO;
import dto.PageDTO;
import service.BoardService;

// http://localhost:8080/myboard/list.sb
@Controller
public class BoardController {
	private BoardService bbsService;
	private int currentPage;
	private PageDTO pdto;
	

	public BoardController() {

	}

	public void setBbsService(BoardService bbsService) {
		this.bbsService = bbsService;
	}

	@RequestMapping("/test.htm")
	public String login() {
		return "board/SmartEditor2";
	}// end login

	
	@RequestMapping("/list.htm")
	   public ModelAndView listMethod(PageDTO pv){
		 ModelAndView mav = new ModelAndView();
		 
	      int totalRecord = bbsService.countProcess();
	      
	      System.out.println("total : " + totalRecord);

	      if(pv.getCurrentPage() ==0)
	    	  currentPage=1;
	      else
	    	  currentPage = pv.getCurrentPage();
	      
	     
	      pdto= new PageDTO(currentPage, totalRecord);
//	      
	      
//	      mav=addObject("aList", service.listProcess(pdto));
//	      mav=addObject("pv", pdto);
//	      

	      
	      pv = new PageDTO(currentPage, totalRecord);
	      mav.addObject("aList", bbsService.listProcess(pv));
	      mav.addObject("pv", pv);
	      System.out.println(bbsService.listProcess(pv).size());

	      mav.setViewName("board/list");
	      return mav;
	   }
		@RequestMapping("view.htm")
		public ModelAndView viewMethod(int currentPage, int num){
			 ModelAndView mav = new ModelAndView();
			 BoardDTO dto = bbsService.contentProcess(num);
			 
			 mav.addObject("dto",dto);
			 mav.addObject("currentPage",currentPage);
			
			 mav.setViewName("board/view");
			return mav;
		}
		
		@RequestMapping(value="/write.htm", method =RequestMethod.GET)
		public ModelAndView writeMethod(PageDTO pv, BoardDTO dto){
			
			ModelAndView mav = new ModelAndView();
			
			if(dto.getRef()!=0){
				mav.addObject("currentPage",pv.getCurrentPage());
				mav.addObject("dto",dto);
			}
			mav.setViewName("board/write");
			return mav;
		}
		
		
		@RequestMapping(value = "/write.htm", method = RequestMethod.POST)
		public String writeProMethod(BoardDTO dto, HttpServletRequest request) {

			MultipartFile file = dto.getFilename();
			if (!file.isEmpty()) {
				String fileName = file.getOriginalFilename();

				// 중복파일명을 처리하기 위해 난수 발생
				UUID random = UUID.randomUUID();
				String root = request.getSession().getServletContext().getRealPath("/");
				// root+"temp/"
				String saveDirectory = root + "temp" + File.separator;
				File fe = new File(saveDirectory);
				if (!fe.exists())
					fe.mkdir();

				File ff = new File(saveDirectory, random + "_" + fileName);
				try {
					FileCopyUtils.copy(file.getInputStream(), new FileOutputStream(ff));
				} catch (FileNotFoundException e) {

					e.printStackTrace();
				} catch (IOException e) {

					e.printStackTrace();
				}

				dto.setUpload(random + "_" + fileName);
			}

			dto.setIp(request.getRemoteAddr());
			
			//답변글이면
			if(dto.getRef()!=0){
				
				bbsService.reStepProcess(dto);
			}else{ //제목글이면
				bbsService.insertProcess(dto);
			}		
			
			return "redirect:/list.htm";
		}// end writeProMethod()
		
		@RequestMapping("/contentdownload.htm")
		public ModelAndView downMethod(int num){
			ModelAndView mav = new ModelAndView();
			mav.addObject("num",num);
			mav.setViewName("download");
			
			return mav;
		}
		
		
		@RequestMapping(value="/update.htm",method=RequestMethod.GET)
		   public ModelAndView updateMethod(int num, int currentPage){
		      ModelAndView mav = new ModelAndView();
		      BoardDTO dto = bbsService.contentProcess(num);
		      //mav.addObject("aList", service.contentProcess(num));
		      mav.addObject("dto",dto);
		      mav.addObject("currentPage", currentPage);
		      mav.setViewName("board/update");
		      return mav;
		   }
		@RequestMapping(value="/update.htm",method=RequestMethod.POST)
		public ModelAndView updateProc(BoardDTO dto, int currentPage, HttpServletRequest request){
			ModelAndView mav = new ModelAndView();
			bbsService.updateProcess(dto, request);
			mav.addObject("currentPage", currentPage);
			mav.setViewName("redirect:/list.htm");
			return mav;
			
		}
		
		public ModelAndView deleteMethod(int num, int currentPage,HttpServletRequest request){
			ModelAndView mav = new ModelAndView();
			bbsService.deleteProcess(num, request);
			
			PageDTO pv = new PageDTO(bbsService.countProcess());
			if(pv.getTotalPage() < currentPage)
				mav.addObject("currentPage",pv.getTotalPage());
			else
				mav.addObject("currentPage",currentPage);
			mav.setViewName("redirect:/list.htm");
			return mav;
		}
		
}
















