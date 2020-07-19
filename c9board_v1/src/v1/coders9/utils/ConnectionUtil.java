package v1.coders9.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * !!!2. java와 DB의 연동을 위한 Util 작성
 * @author HYB
 *
 */

public class ConnectionUtil {

	/**
	 * 클래스 로딩시 JDBC 드라이버를 JVM의 드라이버 레지스트리에 등록 
	 */
	static {
		try {
			Class.forName("org.mariadb.jdbc.Driver");
		//  Class.forName("oracle.jdbc.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * 데이터베이스와 연결된 Connection 객체 반환
	 * @return 데이터베이스 연결, SQL 전송에 필요한 Connection 객체
	 * @throws SQLException 데이터베이스 url, 계정 정보 등이 올바르지 않는 경우 발생
	 */
	public static Connection getConnection() throws SQLException {

//		String url = "jdbc:mariadb://localhost:3306/board?useUnicode=true&characterEncoding=utf8";
//		String url = "jdbc:mariadb://localhost:3306/board1";	// 학원꺼는 이거였나
		String url = "jdbc:mariadb://localhost:3306/board";
		String user = "root";	// 별명말고 사용자 이름, hyb라고 썼다가 java.sql.SQLInvalidAuthorizationSpecException 오류남
		String pwd = "zxcv1234";
		
		Connection connection = DriverManager.getConnection(url, user, pwd);
		return connection;
		
//		String url = "jdbc:oracle:thin:@localhost:1521:xe";
//		String user = "hr";
//		String password = "zxcv1234";

//		Connection connection = DriverManager.getConnection(url, user, password);
//		return connection;
		
	}
}
