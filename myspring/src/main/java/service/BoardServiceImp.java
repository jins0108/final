package service;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

import dao.BoardDAO;
import dto.BoardDTO;
import dto.PageDTO;

public class BoardServiceImp implements BoardService{
	private BoardDAO bbsDao;
	
	public BoardServiceImp(){
		
	}
	
	public void setBbsDao(BoardDAO bbsDao) {
		this.bbsDao = bbsDao;
	}

	@Override
	public int countProcess() {

		return bbsDao.count();
	}

	@Override
	public List<BoardDTO> listProcess(PageDTO pv) {

		return bbsDao.list(pv);
	}

	@Override
	public void insertProcess(BoardDTO dto) {
		bbsDao.save(dto);
		
	}

	@Override
	public BoardDTO contentProcess(int num) {
		bbsDao.readCount(num);
		return bbsDao.content(num);
	}

	@Override
	public void reStepProcess(BoardDTO dto) {

		bbsDao.reStepCount(dto);
		dto.setRe_step(dto.getRe_step()+1);
		dto.setRe_level(dto.getRe_level() +1);
		bbsDao.save(dto);
	}

	@Override
	public BoardDTO updateSelectProcess(int num) {

		return bbsDao.updateNum(num);
	}

	@Override
	public void updateProcess(BoardDTO dto, HttpServletRequest request) {
		//기존 첨부파일
		String filename = bbsDao.getFile(dto.getNum());
		String root = request.getSession().getServletContext().getRealPath("/");
		String saveDirectory = root + "temp" + File.separator;
		
		//수정할 첨부파일
		MultipartFile file = dto.getFilename();
		
			//수정할 첨부파일이 있으면 
			if (!file.isEmpty()) {				
				// 중복파일명을 처리하기 위해 난수 발생
				UUID random = UUID.randomUUID();				
				
				//기존 첨부파일이 있으면
				if(filename != null){
					File fe = new File(saveDirectory, filename);
					fe.delete();
				}
				
			String fileName = file.getOriginalFilename();
			dto.setUpload(random+"_"+fileName);
			
			
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
		
		bbsDao.update(dto);
		

	}

	@Override
	public void deleteProcess(int num, HttpServletRequest request) {

		String upload = bbsDao.getFile(num);
		if(upload !=null){
			String root = request.getSession().getServletContext().getRealPath("/");
			String saveDirectory = root+"temp"+ File.separator;
			File fe = new File(saveDirectory,upload);
			fe.delete();
		}
		bbsDao.delete(num);
	}
}
