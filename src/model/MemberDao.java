package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MemberDao {

    /* insert into member (id, pass, name, gender, tel, picture)
    * values (?, ?, ?, ?, ?, ?, ?) */
    public int insert(Member mem) {
        Connection conn = DbConnection.getConnection();
        PreparedStatement pstmt = null;
        String sql = "insert into member" +
                " (id, pass, name, gender, email, tel, picture)" +
                " values (?, ?, ?, ?, ?, ?, ?)";
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, mem.getId());
            pstmt.setString(2, mem.getPass());
            pstmt.setString(3, mem.getName());
            pstmt.setInt(4, mem.getGender());
            pstmt.setString(5, mem.getEmail());
            pstmt.setString(6, mem.getTel());
            pstmt.setString(7, mem.getPicture());
            return pstmt.executeUpdate(); // 성공시 양수 (> 0)를 return = 변경된 레코드 수
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DbConnection.close(conn, pstmt, null);
        }
        return 0;
    }

    /* select * from member where id = ? */
    public Member selectOne(String id) {
        String sql = "select * from member where id = ?";
        Connection conn = DbConnection.getConnection();
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, id);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                Member member = new Member();
                member.setId(rs.getString("id")); // column 명으로 접근
                member.setPass(rs.getString("pass"));
                member.setName(rs.getString("name"));
                member.setGender(rs.getInt("gender"));
                member.setTel(rs.getString("tel"));
                member.setEmail(rs.getString("email"));
                member.setPicture(rs.getString("picture"));
                return member;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DbConnection.close(conn, pstmt, rs);
        }
        return null;
    }
}
