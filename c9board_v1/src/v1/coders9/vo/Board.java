package v1.coders9.vo;

import java.util.Date;

/**
 * 2. DB에 설정한 board에 맞춰서 vo 작성
 * 	외래키인 userNo를 사용할 것이기 때문에 userNo도 선언
 * @author HYB
 *
 */
public class Board {

	private int boardNo;
	private String boardTitle;
	private String boardContent;
	private Date boardCreatedDate;
	private boolean boardDeleted;
	private int userNo;
	
	public Board() {
		
	}

	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}

	public String getBoardTitle() {
		return boardTitle;
	}

	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}

	public String getBoardContent() {
		return boardContent;
	}

	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}

	public Date getBoardCreatedDate() {
		return boardCreatedDate;
	}

	public void setBoardCreatedDate(Date boardCreatedDate) {
		this.boardCreatedDate = boardCreatedDate;
	}

	public boolean isBoardDeleted() {
		return boardDeleted;
	}

	public void setBoardDeleted(boolean boardDeleted) {
		this.boardDeleted = boardDeleted;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	
}
