package com.prac.member.model.dao;

import static common.template.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import com.prac.member.model.vo.Member;

public class MemberDao {
    private Properties prop = new Properties();

    public MemberDao() {
      String path = MemberDao.class.getResource("/sql/member/member-query.properties").getPath();
      try {
        prop.load(new FileReader(path));
      } catch(IOException e) {
        e.printStackTrace();
      }
  }

  public Member selectMember(Connection conn, String userId) {
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    Member m =null;
    String sql = prop.getProperty("selectCheckId");
    try {
      pstmt = conn.prepareStatement(sql);
      pstmt.setString(1, userId);
      rs = pstmt.executeQuery();
      if(rs.next()) {
        m = new Member();
  
        m.setUserId(rs.getString("userId"));
        m.setUserName(rs.getString("userName"));
        m.setGender(rs.getString("gender").charAt(0));
        m.setAge(rs.getInt("age"));
        m.setEmail(rs.getString("email"));
        m.setPhone(rs.getString("phone"));
        m.setAddress(rs.getString("address"));
        m.setHobby(rs.getString("hobby"));
        m.setEnrollDate(rs.getDate("enrollDate"));
      }
    } catch(SQLException e) {
      e.printStackTrace();
    } finally {
      close(rs);
      close(pstmt);
    }
    return m;
  }

  public Member selectId(Connection conn, String id, String pw) {
    Member m = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    String sql = prop.getProperty("selectId");
    
    try {
      pstmt = conn.prepareStatement(sql);
      pstmt.setString(1, id);
      pstmt.setString(2, pw);
      rs = pstmt.executeQuery();
      if(rs.next()) {
        m = new Member();
  
        m.setUserId(rs.getString("userId"));
        m.setUserName(rs.getString("userName"));
        m.setGender(rs.getString("gender").charAt(0));
        m.setAge(rs.getInt("age"));
        m.setEmail(rs.getString("email"));
        m.setPhone(rs.getString("phone"));
        m.setAddress(rs.getString("address"));
        m.setHobby(rs.getString("hobby"));
        m.setEnrollDate(rs.getDate("enrollDate"));
      }
    } catch(SQLException e) {
      e.printStackTrace();
    } finally {
      close(rs);
      close(pstmt);
    }

    return m;
  }
  
  //아이디 중복 확인
  public boolean selectCheckId(Connection conn, String userId) {
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    boolean result = false;
    String sql = prop.getProperty("selectCheckId");

    try {
      pstmt = conn.prepareStatement(sql);
      pstmt.setString(1, userId);
      rs = pstmt.executeQuery();
      if(!rs.next()) {
        result = true;
      }
    } catch(SQLException e) {
      e.printStackTrace();
    } finally {
      close(rs);
      close(pstmt);
    }

    return result;
  }
  
  public int insertMember(Connection conn, Member m) {
    PreparedStatement pstmt = null;
    int result = 0;

    String sql = prop.getProperty("insertMember");

    System.out.println(m);
    try {
      pstmt = conn.prepareStatement(sql);
      pstmt.setString(1, m.getUserId());
      pstmt.setString(2, m.getPassword());
      pstmt.setString(3, m.getUserName());
      pstmt.setString(4, String.valueOf(m.getGender()));
      pstmt.setInt(5, m.getAge());
      pstmt.setString(6, m.getEmail());
      pstmt.setString(7, m.getPhone());
      pstmt.setString(8, m.getAddress());
      pstmt.setString(9, m.getHobby());

      result = pstmt.executeUpdate();

    } catch(SQLException e) {
      e.printStackTrace();
    } finally {
      close(pstmt);
    }
    return result;
    
  }
  
  public int updateMember(Connection conn, Member m) {
    PreparedStatement pstmt = null;
    String sql = prop.getProperty("updateMember");
    int result = 0;
    try {
      pstmt = conn.prepareStatement(sql);
//        update member set userName=?,
//            gender=?,
//            age=?,
//            email=?,
//            phone=?,
//            address=?,
//            hobby=?,
//  where userId=?
      pstmt.setString(1, m.getUserName());
      pstmt.setString(2, String.valueOf(m.getGender()));
      pstmt.setInt(3, m.getAge());
      pstmt.setString(4, m.getEmail());
      pstmt.setString(5, m.getPhone());
      pstmt.setString(6, m.getAddress());
      pstmt.setString(7, m.getHobby());
      pstmt.setString(8, m.getUserId());

      result = pstmt.executeUpdate();

    } catch(SQLException e) {
      e.printStackTrace();
    } finally {
      close(pstmt);
    }

    return result;
  }

  public int deleteMember(Connection conn, String id) {
    PreparedStatement pstmt = null;
    String sql = prop.getProperty("deleteMember");
    int result = 0;
    
    try {
      pstmt = conn.prepareStatement(sql);
      pstmt.setString(1, id);

      result = pstmt.executeUpdate();
    } catch(SQLException e) {
      e.printStackTrace();
    } finally {
      close(pstmt);
    }

    return result;
  }
  
  public int updatePassword(Connection conn, String userId, String passwordNew) {
    PreparedStatement pstmt = null;
    String sql = prop.getProperty("updatePassword");
    int result = 0;
    try {
      pstmt=conn.prepareStatement(sql);
      pstmt.setString(1, passwordNew);
      pstmt.setString(2, userId);
      result = pstmt.executeUpdate();
    } catch(SQLException e) {
      e.printStackTrace();
    } finally {
      close(pstmt);
    }
    return result;
  }
  
  public List<Member> selectList(Connection conn){
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    List<Member> list = new ArrayList<Member>();
    String sql = prop.getProperty("selectList");

    try {
      pstmt = conn.prepareStatement(sql);
      rs = pstmt.executeQuery();
      while(rs.next()) {
        Member m = new Member();
  
        m.setUserId(rs.getString("userId"));
        m.setUserName(rs.getString("userName"));
        m.setGender(rs.getString("gender").charAt(0));
        m.setAge(rs.getInt("age"));
        m.setEmail(rs.getString("email"));
        m.setPhone(rs.getString("phone"));
        m.setAddress(rs.getString("address"));
        m.setHobby(rs.getString("hobby"));
        m.setEnrollDate(rs.getDate("enrollDate"));

        list.add(m);
      }
    } catch(SQLException e) {
      e.printStackTrace();
    } finally {
      close(rs);
      close(pstmt);
    }
    
    return list;
  }
}