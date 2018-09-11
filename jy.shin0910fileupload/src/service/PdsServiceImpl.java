package service;

import java.io.File;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import dao.PdsDAO;
import dao.PdsDAOImpl;
import vo.Pds;

public class PdsServiceImpl implements PdsService {
	private PdsDAO pdsDAO;
	private PdsServiceImpl() {
		pdsDAO = PdsDAOImpl.sharedInstance();
	}
	
	private static PdsService pdsService;
	
	public static PdsService sharedInstance() {
		if(pdsService ==null)
			pdsService = new PdsServiceImpl();	
		return pdsService;
	}

	@Override
	public boolean insertPds(HttpServletRequest request) {
		try {
			//파라미터 읽기 
			request.setCharacterEncoding("utf-8");
			
			//작업 처리 
			//파일 업로드 
			//파일을 저장할 디렉토리 경로 생성 
			String uploadPath = request.getServletContext().getRealPath("/pdsupload"); 			
			MultipartRequest multi = new MultipartRequest(request, uploadPath, 1024*1024*10, "utf-8", new DefaultFileRenamePolicy());
			
			//가장 큰 code 찾아오기 
			int code = pdsDAO.maxCode();
			//description 읽기
			String description = multi.getParameter("description");
			//업로드 된 파일 명 찾아오기 
			Enumeration<String> fileNames = multi.getFileNames();
			String file=fileNames.nextElement();
			String filename = multi.getFilesystemName(file);
			//업로드 된 파일 크기 찾아오기 
			File f = new File(uploadPath + "/" + filename);
			int filesize = (int)f.length();
			
			//DAO 파라미터 만들기 
			Pds pds = new Pds();
			pds.setCode(code+1);
			pds.setFilename(filename);
			pds.setFilesize(filesize);
			pds.setDescription(description);
			
			//DAO 메소드를 호출해서 리턴 
			return pdsDAO.insertPds(pds);
			
			
		}catch(Exception e) {
			System.out.println("데이터 삽입 예외: "+ e.getMessage());
			e.printStackTrace();			
		}
		return false;
	}

	@Override
	public List<Pds> listPds(HttpServletRequest request) {
		
		return pdsDAO.listPds();
	}
		
}
