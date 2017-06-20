package mem;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dbcp.Dbcp;

public class MemberFn {
	
	private static final String passwd = null;
	Dbcp db = new Dbcp();
	ResultSet rs = null;
	
	public ArrayList<Member> getMemberList(){
		db.connect();
		
		ArrayList<Member> list = new ArrayList<>();
		
		String SQL = "select * from member";
		
		try {
			db.setPstmt(db.getCon().prepareStatement(SQL));
			rs = db.getPstmt().executeQuery();
			
			while (rs.next()) {
				
				Member mem = new Member();
				
				mem.setId(rs.getString("id"));
				mem.setName(rs.getString("name"));
				mem.setPasswd(rs.getString("passwd"));
				mem.setGender(rs.getString("gender"));
				mem.setBirth(rs.getString("birth"));
				mem.setEmail(rs.getString("email"));
				mem.setMobile(rs.getString("mobile"));
				mem.setGrade(rs.getString("grade"));
				
				list.add(mem);
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.disconnect();
		}
		return list;
	}
	
	public boolean joininsert(Member mem){
		boolean success = false;
		System.out.println(mem.toString());
		db.connect();
		String sql = "insert into member values(?,?,?,?,?,?,?)";
		try{
			db.setPstmt(db.getCon().prepareStatement(sql));
			db.getPstmt().setString(1,mem.getId());
			db.getPstmt().setString(2,mem.getName());
			db.getPstmt().setString(3, mem.getPasswd());
			db.getPstmt().setString(4, mem.getGender());
			db.getPstmt().setString(5, mem.getBirth());
			db.getPstmt().setString(6, mem.getEmail());
			db.getPstmt().setString(7, mem.getMobile());
			db.getPstmt().executeQuery();
			success = true;
			
		}catch(SQLException e){
			e.printStackTrace();
			return success;
		}finally{
			db.disconnect();
		}
		return success;
	}
	
	
	public boolean updatejoin(Member mem){
		boolean success = false;
		db.connect();
		String sql = "update member set name=?, passwd=?, gender=?, birth=?, email=?, mobile=? where id=?";
		try {
			db.setPstmt(db.getCon().prepareStatement(sql));
			db.getPstmt().setString(1, mem.getName());
			db.getPstmt().setString(2, mem.getPasswd());
			db.getPstmt().setString(3, mem.getGender());
			db.getPstmt().setString(4, mem.getBirth());
			db.getPstmt().setString(5, mem.getEmail());
			db.getPstmt().setString(6, mem.getMobile());
			db.getPstmt().setString(7, mem.getId());
			db.getPstmt().executeUpdate();
			success = true;
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			db.disconnect();
		}
		return success;
	}
	
	
	public boolean joindelete(String id){
		boolean success = false;
		db.connect();
		String sql = "delete from member where id=?";
		try{
			db.setPstmt(db.getCon().prepareStatement(sql));
			db.getPstmt().setString(1, id);
			db.getPstmt().executeQuery();
		}catch(Exception e){
			e.printStackTrace();
			return success;
		}finally{
			db.disconnect();
		}
		return success;
	}
	
	public boolean memLogin(Member mem){
		boolean success = false;
		db.connect();
		String sql = "select passwd from member where id = ?";
		try{
			db.setPstmt(db.getCon().prepareStatement(sql));
			db.getPstmt().setString(1, mem.getId());
			rs = db.getPstmt().executeQuery();
			rs.next();
			if(rs.getString("passwd").equals(mem.getPasswd())){
				success = true;
			}
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			db.disconnect();
		}
		return success;
	}
	
	public Member memSelect(String id){
		
		db.connect();
		Member mem = new Member();
		String sql = "select * from member where id = ?";
		try{
			db.setPstmt(db.getCon().prepareStatement(sql));
			db.getPstmt().setString(1, id);
			rs = db.getPstmt().executeQuery();
			rs.next();
			mem.setId(rs.getString("id"));
			mem.setName(rs.getString("name"));
			mem.setPasswd(rs.getString("passwd"));
			mem.setEmail(rs.getString("email"));
			mem.setBirth(rs.getString("birth"));
			mem.setMobile(rs.getString("mobile"));
			mem.setGender(rs.getString("gender"));
			
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			db.disconnect();
		}
		return mem;
	}
	
	public boolean checkId(String id){
		boolean success = false;
		db.connect();
		try {
			String sql = "select id from member where id like?";
			db.setPstmt(db.getCon().prepareStatement(sql));
			db.getPstmt().setString(1, id);
			rs = db.getPstmt().executeQuery();
			success = rs.next();
		} catch (Exception e) {
			System.out.println("checkId err : " + e);
		}finally{
			try {
				if(rs!=null)rs.close();
				if(db.getPstmt() != null)db.getPstmt().close();
				if(db.getCon() != null)db.getCon().close();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
		return success;
	}
	
	public List<String> idsearch(String name, String mobile){
		List<String>idlist = new ArrayList<String>();
		String sql ="select * from member";
		db.connect();
		try{
			
			db.setPstmt(db.getCon().prepareStatement(sql));
			rs = db.getPstmt().executeQuery();
		
			while(rs.next()){
				
				if(name.equals(rs.getString("name"))&& mobile.equals(rs.getString("mobile"))){
					
					String id = rs.getString("id");
					idlist.add(id);
				}
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			db.disconnect();
		}
		
		return idlist;
	}
	
	public List<String> pwsearch(String id, String birth){
		List<String>idlist = new ArrayList<String>();
		String sql ="select * from member";
		db.connect();
		try{
			
			db.setPstmt(db.getCon().prepareStatement(sql));
			rs = db.getPstmt().executeQuery();
			
			while(rs.next()){
				
				if(id.equals(rs.getString("id"))&& birth.equals(rs.getString("birth"))){
					
					String pass = rs.getString("passwd");
					idlist.add(pass);
				}
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			db.disconnect();
		}
		
		return idlist;
	}
}
