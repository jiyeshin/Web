package dao;

import java.sql.*;

import vo.TMember;
import java.util.Date;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class UserDaoImpl implements UserDao {

	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;

	// 외부에서 인스턴스 생성을 못하도록 생성자를 private로 설정
	private UserDaoImpl() {}

	private static UserDao userDao; // 인스턴스 1개의 주소를 저장할 수 있는 변수를 생성

	public static UserDao sharedInstance() { // 외부에서 인스턴스를 사용할 수 있도록 public으로 인스턴스의 주소를 리턴해주는 메소드
		if (userDao == null) { // 아무것도 없으면 리턴할 게 없으니까 처음 한번만 인스턴스를 생성하도록 해주는 코드
			userDao = new UserDaoImpl();
		}
		return userDao;
	}

	@Override
	public TMember login(TMember tmember) {
		// 넘어온 파라미터 출력 :email 과 pw 가 제대로 저장되었는지 확인
		System.out.println("넘어온 데이터: " + tmember);

		// 리스트가 아닐 때는 처음에 null을 넣고 리턴시킴
		TMember user = null;
		try {
			//context.xml 파일의 내용을 읽어오는 거. 
			Context init = new InitialContext();
			//읽은 내용 중에서 DBConn 이라는 이름의 내용을 읽어서 데이터베이스 접속정보를 생성함 
			DataSource ds = (DataSource) init.lookup("java:comp/env/DBConn");
			//접속정보를 이용해서 커넥션 빌려오기 
			con = ds.getConnection();
			
			pstmt = con.prepareStatement("select email, name from tmember where trim(email)=? and trim(pw)=?");
			pstmt.setString(1, tmember.getEmail().trim());
			pstmt.setString(2, tmember.getPw().trim());

			rs = pstmt.executeQuery(); // select일 때는 rs로 받음.

			if (rs.next()) {// 결과 읽기 - 읽은 데이터가 있는 경우에 user에 인스턴스를 생성해서 대입. 없으면 user는 null.
				user = new TMember();// 인스턴스를 생성하고 결과 저장
				user.setEmail(rs.getString("email"));
				user.setName(rs.getString("name"));
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (con != null)
					con.close();
			} catch (Exception e) {
			}
		}
		// 리턴할 데이터 확인
		System.out.println("리턴하는 데이터: " + user);

		// email 과 pw가 일치하는 데이터가 없으면 null리턴
		// 일치하는 데이터가 있으면 인스턴스를 생성해서 리턴.
		// 리턴되는 값이 있으면 로그인 성공.
		return user;
	}

	@Override
	public boolean memberRegister(TMember member) {
		boolean result = false;
		try {
			Context init = new InitialContext();
			DataSource ds = (DataSource) init.lookup("java:comp/env/DBConn");
			con = ds.getConnection();
			pstmt = con.prepareStatement("insert into tmember(email,name,pw,phone) values(?,?,?,?)");
			pstmt.setString(1, member.getEmail());
			pstmt.setString(2, member.getName());
			pstmt.setString(3, member.getPw());
			pstmt.setString(4, member.getPhone());
			// pstmt.setInt(5, member.getGender());

			// sql 실행
			int r = pstmt.executeUpdate();
			if (r > 0)
				result = true;

		} catch (Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (con != null)
					con.close();
			} catch (Exception e) {
			}
		}

		return result;
	}

	@Override
	public boolean emailCheck(String email) {
		boolean result = false;
		try {
			Context init = new InitialContext();
			DataSource ds = (DataSource) init.lookup("java:comp/env/DBConn");
			con = ds.getConnection();
			//con = DriverManager.getConnection("jdbc:oracle:thin:@192.168.10.101:1521:xe", "user12", "user12"); //데이터베이스 접속
			pstmt = con.prepareStatement("select email from tmember where email=?"); //sql 실행 객체 생성 
			pstmt.setString(1, email); //?에 데이터 바인딩 
			
			rs=pstmt.executeQuery();//sql 실행 
			
			if(rs.next()) { //넥스트메소드는 다음 데이터로 이동. 다음데이터가 있으면 true, 없으면 false 
				result=true; //데이터가 검색되면 result는 true 
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (con != null)
					con.close();
			} catch (Exception e) {
			}
		}
		return result;
	}
}
