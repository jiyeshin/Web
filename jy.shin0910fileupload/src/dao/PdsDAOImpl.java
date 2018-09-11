package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import vo.Pds;

public class PdsDAOImpl implements PdsDAO {
	//싱글톤 
	private PdsDAOImpl() {}
	private static PdsDAO pdsDAO;
	
	public static PdsDAO sharedInstance() {
		if(pdsDAO==null) {
			pdsDAO = new PdsDAOImpl();
		}
		return pdsDAO;
	}
	
	//데이터베이스 작업을 위한 변수 
	protected Connection con;
	protected PreparedStatement pstmt;
	protected ResultSet rs;
	
	//데이터베이스 접속을 수행해주는 메소드 
	protected void connect() {
		Context init;
		try {
			//context.xml 파일의 DBConn 이라는 리소스 이름을 이용해서 데이저베이스 접속 만들기 
			init = new InitialContext();
			DataSource ds = (DataSource)init.lookup("java:comp/env/DBConn");
			con=ds.getConnection();
		} catch (Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}		
	}
	
	//데이터베이스 자원을 해제하는 메소드 
	protected void close() {
		try {
			if(rs!=null)rs.close();
			if(pstmt!=null)pstmt.close();
			if(con!=null)con.close();
		} catch (Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}		
	}

	@Override
	public int maxCode() {
		int code = 0;
		try {
			connect();
			//pds 테이블에서 가장 큰 code 가져오기 
			pstmt=con.prepareStatement("select max(code) from pds");
			rs = pstmt.executeQuery();
			
			//데이터 읽기 
			if(rs.next()) {
				code = rs.getInt("max(code)");
			}
		}catch(Exception e) {
			System.out.println("가장 큰 code 가져오기 에러: " +e.getMessage());
			e.printStackTrace();
		}finally {
			close();
		}		
		return code;
	}

	@Override
	public boolean insertPds(Pds pds) {
		boolean result = false;
		try {
			connect();
			pstmt=con.prepareStatement("insert into pds(code, filename, filesize, description) values(?,?,?,?)");
			pstmt.setInt(1, pds.getCode());
			pstmt.setString(2, pds.getFilename());
			pstmt.setInt(3, pds.getFilesize());
			pstmt.setString(4, pds.getDescription());
			
			int r=pstmt.executeUpdate();
			if(r>0) {
				result=true;
			}
		}catch(Exception e) {
			System.out.println("데이터 저장 에러: " +e.getMessage());
			e.printStackTrace();
		}finally{
			close();
		}
		return result;
	}

	@Override
	public List<Pds> listPds() {
		List<Pds> list = new ArrayList<Pds>();
		try {
			connect();
			pstmt=con.prepareStatement("select * from pds order by code");
			rs=pstmt.executeQuery();
			while(rs.next()) {
				Pds pds = new Pds();
				pds.setCode(rs.getInt("code"));
				pds.setFilename(rs.getString("filename"));
				pds.setFilesize(rs.getInt("filesize"));
				pds.setDescription(rs.getString("description"));
				list.add(pds);
			}
		}catch(Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}finally {
			close();
		}
		
		return list;
	}
	
	
}
