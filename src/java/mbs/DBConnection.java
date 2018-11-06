/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mbs;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Zhimeng Luo
 */
public class DBConnection {
    public static Connection createConnection(){
        Connection conn = null;

        String connectionURL = "jdbc:derby://localhost:1527/luozm";
        String username = "is2560";
        String password = "is2560";

        try{
            try{
               Class.forName("org.apache.derby.jdbc.ClientDriver");
            } catch (ClassNotFoundException e){
                e.printStackTrace();
            }
            conn = DriverManager.getConnection(connectionURL, username, password);
        } catch (Exception e){
            e.printStackTrace();
        }
        return conn;              
    }
    
    public static Boolean checkUser(myBean ub){
        String name = ub.getName();
        String password = ub.getPassword();
        
        String nameDB = "";
        String passwordDB = "";
        // connection
        try {
            Connection conn = createConnection();
                
            String sql = "SELECT name, password FROM users";
            Statement st = conn.createStatement();
            ResultSet rs = null;
            rs = st.executeQuery(sql);
         
            while(rs.next()){
                nameDB = rs.getString("name");
                passwordDB = rs.getString("password");
                
                if(name.equals(nameDB) && password.equals(passwordDB)){
                    return true;
                }
            }
            
            rs.close();
            st.close();
            conn.close();

        } catch (SQLException ex){
            ex.printStackTrace();
        }
        
        return false;    
    }

    public Boolean registUser(myBean ub){
        String name = ub.getName();
        String password = ub.getPassword();
        
        // connection
        try {
            Connection conn = createConnection();
                
            String insertTableSQL = "INSERT INTO users VALUES " + "(?,?)";
            PreparedStatement preparedStatement = conn.prepareStatement(insertTableSQL);
            preparedStatement.setString(1, name);
            preparedStatement.setString(2, password);
            // execute insert SQL stetement
            int res = preparedStatement.executeUpdate();

            if(res > 0){
                return true;
            }

            preparedStatement.close();
            conn.close();

        } catch (SQLException ex){
            ex.printStackTrace();
        }
        
        return false;    
    }
    
}
