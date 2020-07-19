package v1.coders9.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import v1.coders9.utils.ConnectionUtil;
import v1.coders9.utils.QueryUtil;
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
		
		// no는 자동 증가니까 제외
		pstmt.setString(1, user.getUserId());
		pstmt.setString(2, user.getUserName());
		pstmt.setString(3, user.getUserNickname());
		pstmt.setString(4, user.getUserPassword());
		pstmt.setString(5, user.getUserContact()); // 디폴트값 null이라 안써도 되는데 그냥 씀
		// 
		
		pstmt.executeUpdate();
		
		pstmt.close();
		connection.close();
	}
	
	public User getUserById(String userId) throws SQLException {
		User user = null;
		Connection connection = ConnectionUtil.getConnection();
		PreparedStatement pstmt = connection.prepareStatement(QueryUtil.getSQL("user.getUserById"));
		pstmt.setString(1, userId);
		ResultSet rs = pstmt.executeQuery();

		if (rs.next()) {	// while로 해야되나?
			user = new User();
			user.setUserNo(rs.getInt("user_no")); // 쿼리문의 user_no
			user.setUserId(rs.getString("user_id")); // 쿼리문의 user_id
			user.setUserNickname(rs.getString("user_nickname")); // 쿼리문의 "user_nickname
			user.setUserPassword(rs.getString("user_password")); // 쿼리문의 user_password
			user.setUserContact(rs.getString("user_contact")); // 쿼리문의 user_contact
			user.setUserRegisteredDate(rs.getDate("user_registered_date")); // 쿼리문의 user_registered_date
			user.setUserQuit(rs.getBoolean("user_quit_yn")); // 쿼리문의 user_quit_yn
			
		}
		rs.close();
		pstmt.close();
		connection.close();
		
		return user;
	}
}
