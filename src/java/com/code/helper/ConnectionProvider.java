
package com.code.helper;

import java.sql.*;
public class ConnectionProvider {
    private static Connection con;
    public static Connection getConnection()
    {
        
        try{
            if(con==null)
                
            {
                //Driver Class load
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            // create a connection
            con= DriverManager.getConnection("jdbc:mysql://localhost:3306/codecommunitydb","root","Chirag@123");
            }
            
        }
        catch(Exception e){
            e.printStackTrace();
            
        }
        return con;
    }
}
