package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import common.DBConnection;
import vo.MemberVo;

public class MemberDao {

	public void createAccount(String id, String pw, String name) {
		Connection conn = DBConnection.getConnection();
		
		String sql = "INSERT INTO testmember(id, pw, name)" + 
					" VALUES(?, ?, ?)";
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			pstmt.setString(3, name);
			pstmt.executeUpdate();
			pstmt.close();
			conn.close();
		} catch(SQLException e) {
			e.printStackTrace();;
		}
	}

	public boolean getMemberLogin(String id, String pw) {
		Connection conn = DBConnection.getConnection();
		
		String sql = "SELECT count(*) FROM testmember WHERE id=? AND pw=?";
		int cnt = 0;
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setNString(2, pw);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				cnt = rs.getInt(1);
			}
		} catch(SQLException e) {
			e.printStackTrace();
		}
		return cnt==1;
	}

	public MemberVo getMemberInfo(String id, String pw) {
		MemberVo vo = null;
		Connection conn = DBConnection.getConnection();
		
		String sql = "SELECT * FROM testmember WHERE id=? AND pw=?";
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				String memberId = rs.getString("id");
				String memberPw = rs.getString("pw");
				String memberName = rs.getString("name");
				int memberPoint = rs.getInt("point");
				vo = new MemberVo(memberId, memberPw, memberName, memberPoint);
				System.out.println(memberId+","+ memberPw+","+memberName+","+memberPoint);
			}
			rs.close();
			pstmt.close();
			conn.close();
		} catch(SQLException e) {
			e.printStackTrace();
		}
		return vo;
	}
	public void deleteMember(String id) {
		Connection conn = DBConnection.getConnection();
		
		String sql="DELETE FROM testmember";
	}
}
