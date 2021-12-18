/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.User;
import utils.Encrypt;

/**
 *
 * @author Seth_Etherald
 */
public class UserDAO extends BaseDAO {
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    public User login(String username, String password) {
        String query = "SELECT * FROM [dbo].[User] WHERE UserName = ? AND Password = ?";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new User(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3)
                );
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }
    
     public User checkUsername(String username){
        String query = "SELECT * FROM [dbo].[User] WHERE UserName = ?";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, username);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new User(
                        rs.getInt(1),
                        rs.getString(2),
                        null
                );
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }
    
    public void registerAccount(String username, String password){
        String query = "INSERT INTO [dbo].[User] VALUES (?, ?)";
        try {
            ps = connection.prepareStatement(query);
            //Set data to the "?"
            ps.setString(1, username);
            ps.setString(2, Encrypt.md5(password));
            ps.executeUpdate();

        } catch (SQLException throwables) {
           throwables.printStackTrace();
        }
    }
    
    public void registerRoleAdmin(){
        String query = "INSERT INTO [dbo].[UserRole] VALUES (?)";
        try {
            ps = connection.prepareStatement(query);
            //Set data to the "?"
            ps.setString(1, "AM");
            ps.executeUpdate();

        } catch (SQLException throwables) {
           throwables.printStackTrace();
        }

    }
}
