
        
package code.code.dao;

import com.code.entities.UserSignUp;
import java.sql.*;

public class UserDao {
    
    private Connection con;

    public UserDao(Connection con) {
        this.con = con;
    }
    // Method to insert insert user to database
    public boolean saveUser(UserSignUp user)
    {
        boolean f = false;
        try {
            String query = "insert into user(name,email,password,gender,about) value(?,?,?,?,?)";
         PreparedStatement pstmt= this.con.prepareStatement(query);
         pstmt.setString(1,user.getName());
         pstmt.setString(2,user.getEmail());
         pstmt.setString(3,user.getPassword());
         pstmt.setString(4,user.getGender());
         pstmt.setString(5,user.getAbout());
         
         pstmt.executeUpdate();
         f=true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }
    
    // get user by useremail and password
    
    public UserSignUp getUserByEmailAndPassword(String email,String password){
        UserSignUp user = null;
        try {
            String query = "select * from user where email=? and password=?";
            PreparedStatement pstmt = this.con.prepareStatement(query);
            pstmt.setString(1, email);
            pstmt.setString(2, password);
          ResultSet set =  pstmt.executeQuery();
                  if(set.next())
                  {
                      user = new UserSignUp();
                      String name=set.getString("name");
                      user.setName(name);
                      user.setId(set.getInt("id"));
                      user.setEmail(set.getString("email"));
                      user.setPassword(set.getString("password"));
                      user.setGender(set.getString("gender"));
                      user.setAbout(set.getString("about"));
                      user.setRdate(set.getTimestamp("rdate"));
                      user.setProfile(set.getString("profile"));
                  }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return user;
    }
   
     public boolean updateUser(UserSignUp user){
         boolean f=false;
         try {
            
             String query = "update user set name=? , email=? , password=?,gender=?, about=? , profile=? where id=?";
           PreparedStatement p = con.prepareStatement(query);
           p.setString(1, user.getName());
           p.setString(2, user.getEmail());
           p.setString(3, user.getPassword());
           p.setString(4, user.getGender());
            p.setString(5, user.getAbout());
           p.setString(6, user.getProfile());
           p.setInt(7, user.getId());
           
           p.executeUpdate();
           f=true;
           
           
           
           
         } catch (Exception e) {
             e.printStackTrace();
         }
         return f;
     }
     public UserSignUp getUserByUserId(int userId)
     {
         UserSignUp user = null;
         String q = "select * from user where id=?";
         try {
             PreparedStatement p = this.con.prepareStatement(q);
             p.setInt(1, userId);
             ResultSet set=p.executeQuery();
             if(set.next()){
                 user = new UserSignUp();
                      String name=set.getString("name");
                      user.setName(name);
                      user.setId(set.getInt("id"));
                      user.setEmail(set.getString("email"));
                      user.setPassword(set.getString("password"));
                      user.setGender(set.getString("gender"));
                      user.setAbout(set.getString("about"));
                      user.setRdate(set.getTimestamp("rdate"));
                      user.setProfile(set.getString("profile"));
             }
         } catch (Exception e) {
             e.printStackTrace();
         }
         
         
         return user;
     }
  }

