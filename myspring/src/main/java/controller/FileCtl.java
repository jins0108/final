package controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.UUID;

import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

public class FileCtl {
	
//	private String tmp_loc;
//	private String save_loc;
//	private MultipartFile file;
//	private Array allow_type;
//	private int max_size;
//	private String max_width;
//	private String max_height;
//	
	
	
	public  FileCtl(String tmp_loc, String save_loc, MultipartFile file, Array allow_type, int max_size, String max_width,
			String max_height) {

		
		
//		this.tmp_loc = tmp_loc;
//		this.save_loc = save_loc;
//		this.file = file;
//		this.allow_type = allow_type;
//		this.max_width = max_width;
//		this.max_height = max_height;


		
		if(!file.isEmpty()){
			
			if(file.getSize()>max_size){

			}
			
			String fileName = file.getOriginalFilename();
			
			UUID random = UUID.randomUUID();
			
			File f_loc = new File(save_loc);
			
			if (!f_loc.exists())
				f_loc.mkdir();
			
			
			File ff = new File(save_loc, random + "_" + fileName);
			try {
				FileCopyUtils.copy(file.getInputStream(), new FileOutputStream(ff));
			} catch (FileNotFoundException e) {

				e.printStackTrace();
			} catch (IOException e) {
	
				e.printStackTrace();
			}
	
			
		}
		
 
	}
	



	//MultipartFile file = dto.getFilename();
//	if (!file.isEmpty()) {
//		String fileName = file.getOriginalFilename();
//
//		// 중복파일명을 처리하기 위해 난수 발생
//		UUID random = UUID.randomUUID();
//		String root = request.getSession().getServletContext().getRealPath("/");
//		// root+"temp/"
//		String saveDirectory = root + "temp" + File.separator;
//		File fe = new File(saveDirectory);
//		if (!fe.exists())
//			fe.mkdir();
//
//		File ff = new File(saveDirectory, random + "_" + fileName);
//		try {
//			FileCopyUtils.copy(file.getInputStream(), new FileOutputStream(ff));
//		} catch (FileNotFoundException e) {
//
//			e.printStackTrace();
//		} catch (IOException e) {
//
//			e.printStackTrace();
//		}
//
//		dto.setUpload(random + "_" + fileName);
//	}
}
