package dbcp;

import java.sql.*;
import java.util.*;
import javax.sql.*;
import javax.naming.*;


public class Dbcp {
	private Connection con = null;
	private PreparedStatement pstmt = null;
	private DataSource ds = null;
	
	public Dbcp() {
		try {
			InitialContext ctx = new InitialContext();
			ds = (DataSource)ctx.lookup("java:comp/env/jdbc/OracleDB");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void connect() {
		try {
			con = ds.getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void disconnect() {
		if (pstmt != null) {
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (con != null) {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	public Connection getCon() {
		return con;
	}

	public void setCon(Connection con) {
		this.con = con;
	}

	public PreparedStatement getPstmt() {
		return pstmt;
	}

	public void setPstmt(PreparedStatement pstmt) {
		this.pstmt = pstmt;
	}

	public DataSource getDs() {
		return ds;
	}

	public void setDs(DataSource ds) {
		this.ds = ds;
	}
	
}
