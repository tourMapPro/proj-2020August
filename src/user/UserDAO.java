package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	//실제로 데이터베이스에 접근하는 객체
	public UserDAO() {
		try {
			String dbURL = "jdbc:mysql://localhost:3306/bbs?serverTimezone=UTC";
			String dbID ="root";
			String dbPassword ="rootpw";
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public int login(String userID, String userPassword) {
		String sql ="SELECT userPassword FROM user where userID =?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userID);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				if(rs.getString(1).equals(userPassword)) {
					return 1; //로그인 성공
				}
				else
					return 0; //비밀번호 불일치
			}
			return -1; //아이디가 없음
		}catch (Exception e) {
			e.printStackTrace();
		}
		return -2; //error 
	}
	
	//user 클래스를 이용하는 하나의 인스턴스 :회원가입 기능 실제로 실행
	public int join(User user) {
		String SQL ="INSERT INTO USER VALUES (?, ?)";
		try {
			pstmt = conn.prepareStatement(SQL);
			
			pstmt.setString(1, user.getUserID());
			pstmt.setString(2, user.getUserPassword());
			
			return pstmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return -1; //데이터 베이스 오류
	}
}
