package v1.coders9.vo;

import java.util.Date;


/**
 * !!!1.2 DB에 설정한 user에 맞춰서 vo 작성
 * @author HYB
 *
 */
public class User {
	private int userNo;
	private String userId;
	private String userName;
	private String userNickname;
	private String userPassword;
	private String userContact;
	private Date userRegisteredDate;
	private boolean userQuit;
	
	public User() {
		
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserNickname() {
		return userNickname;
	}

	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getUserContact() {
		return userContact;
	}

	public void setUserContact(String userContact) {
		this.userContact = userContact;
	}

	public Date getUserRegisteredDate() {
		return userRegisteredDate;
	}

	public void setUserRegisteredDate(Date userRegisteredDate) {
		this.userRegisteredDate = userRegisteredDate;
	}

	public boolean isUserQuit() {
		return userQuit;
	}

	public void setUserQuit(boolean userQuit) {
		this.userQuit = userQuit;
	}
	
}
