/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author RAMAN
 */
public class DBCOnnn {
     public Connection con;
    public PreparedStatement pstmt;
    public ResultSet rst;
    public Statement stmt;
    public DBCOnnn()
    {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/booking","root","12321");
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
            
    }
    
}
