package brd;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dbcp.Dbcp;

public class BoardFn {

	Dbcp db = new Dbcp();

	public ArrayList<Board> getBoardList() {
		db.connect();
		ArrayList<Board> list = new ArrayList<Board>();

		String SQL = "select * from board_3";

		try {
			db.setPstmt(db.getCon().prepareStatement(SQL));

			ResultSet rs = db.getPstmt().executeQuery();

			while (rs.next()) {
				Board brd = new Board();
				brd.setNum(rs.getInt("num"));
				brd.setId(rs.getString("id"));
				brd.setTitle(rs.getString("title"));
				brd.setRegdate(rs.getTimestamp("regdate"));
				brd.setContent(rs.getString("content"));
				brd.setHit(rs.getInt("hit"));

				list.add(brd);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.disconnect();
		}
		return list;
	}

	public Board getBoard(int num) {
		db.connect();
		String SQL = "select * from board_3 where num = ?";
		Board brd = new Board();

		try {
			db.setPstmt(db.getCon().prepareStatement(SQL));
			db.getPstmt().setInt(1, num);
			ResultSet rs = db.getPstmt().executeQuery();
			rs.next();
			brd.setNum(rs.getInt("num"));
			brd.setId(rs.getString("id"));
			brd.setTitle(rs.getString("title"));
			brd.setRegdate(rs.getTimestamp("regdate"));
			brd.setContent(rs.getString("content"));

			brd.setHit(rs.getInt("hit"));
			rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.disconnect();
		}
		return brd;
	}

	public boolean insertDB(Board board) {
		boolean success = false;
		db.connect();
		String sql = "insert into board_3 values(board_seq_3.nextval, ?, ?, sysdate, ?, 0)";
		try {
			db.setPstmt(db.getCon().prepareStatement(sql));
			db.getPstmt().setString(1, board.getId());
			db.getPstmt().setString(2, board.getTitle());
			db.getPstmt().setString(3, board.getContent());
			db.getPstmt().executeUpdate();
			success = true;
		} catch (SQLException e) {
			e.printStackTrace();
			return success;
		} finally {
			db.disconnect();
		}
		return success;
	}

	public void updateBoard(Board board) {
		db.connect();
		String sql = "update board_3 set title=?, content=? where num=?";
		try {
			db.setPstmt(db.getCon().prepareStatement(sql));
			db.getPstmt().setString(1, board.getTitle());
			db.getPstmt().setString(2, board.getContent());
			db.getPstmt().setInt(3, board.getNum());
			db.getPstmt().executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.disconnect();
		}
	}

	public boolean deleteDB(int num) {
		boolean success = false;
		db.connect();
		String sql = "delete from board_3 where num = ?";
		try {
			db.setPstmt(db.getCon().prepareStatement(sql));
			db.getPstmt().setInt(1, num);
			db.getPstmt().executeUpdate();
			success = true;
		} catch (SQLException e) {
			e.printStackTrace();
			return success;
		} finally {
			db.disconnect();
		}
		return success;
	}
	
	
	public List<Board> searchbd(String keyField, String keyWord) {
		List<Board> list = new ArrayList<Board>();
		db.connect();
		String sql = "select * from board_3 where "+keyField+"= ?";
		try {
			db.setPstmt(db.getCon().prepareStatement(sql));
			db.getPstmt().setString(1, keyWord);
			ResultSet rs = db.getPstmt().executeQuery();
			while (rs.next()) {
				Board brd = new Board();
				brd.setNum(rs.getInt("num"));
				brd.setId(rs.getString("id"));
				brd.setTitle(rs.getString("title"));
				brd.setRegdate(rs.getTimestamp("regdate"));
				brd.setContent(rs.getString("content"));

				brd.setHit(rs.getInt("hit"));
				list.add(brd);
			}
			System.out.println(list.toString());
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}

	public void hitUp(int num) {
		int hit = getBoard(num).getHit() + 1;

		db.connect();
		String SQL = "update board_3 set hit = ? where num = ?";
		try {
			db.setPstmt(db.getCon().prepareStatement(SQL));
			db.getPstmt().setInt(1, hit);
			db.getPstmt().setInt(2, num);
			db.getPstmt().executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.disconnect();
		}
	}
	
	
}
