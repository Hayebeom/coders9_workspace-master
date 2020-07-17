package v1.coders9.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import v1.board.c9.utils.QueryUtil;
import v1.coders9.utils.ConnectionUtil;
import v1.coders9.vo.User;

public class UserDao {

	/**
	 * insertUser : user를 생성한다
	 * return 값이 없다
	 * 온전한 user 객체로 만든다
	 * id, name, nickname, password, contact
	 */
	public void insertUser(User user) throws SQLException {
		Connection connection = ConnectionUtil.getConnection();
		PreparedStatement pstmt = connection.prepareStatement(QueryUtil.getSQL("user.insertUser"));
		
		pstmt.setString(1, user.getUserId());
		pstmt.setString(2, user.getUserName());
		pstmt.setString(3, user.getUserNickname());
		pstmt.setString(4, user.getUserPassword());
		pstmt.setString(5, user.getUserContact());
		
		pstmt.executeUpdate();
		
		pstmt.close();
		connection.close();
	}
}
