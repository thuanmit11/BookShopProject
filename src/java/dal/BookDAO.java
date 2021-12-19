/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.Book;

/**
 *
 * @author ThuanMit
 */
public class BookDAO extends BaseDAO<Book> {

    PreparedStatement ps = null; //...
    ResultSet rs = null; //Get the results returned

    public List<Book> getAllBooks() {
        List<Book> list = new ArrayList<>();
        String query = "SELECT * FROM Book";
        try {
            ps = connection.prepareStatement(query);//Throw the query to the SQL server 
            rs = ps.executeQuery();//Run the query, get the results returned

            //Now the command has been run, rs is the Result table -> Now have to get the data from the rs table and put it in the List
            while (rs.next()) {
                list.add(new Book(rs.getString("bookId"), rs.getString("bookTitle"), rs.getString("author"),
                        rs.getString("brief"), rs.getString("publisher"),
                        rs.getString("content"), rs.getString("category")));
            }
        } catch (Exception e) {

        }

        return list;
    }

    public List<Book> getBookByCategory(String cate) {
        List<Book> list = new ArrayList<>();
        String query = "SELECT * FROM book WHERE category LIKE %?%";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, cate);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Book(rs.getString("bookId"), rs.getString("bookTitle"), rs.getString("author"),
                        rs.getString("brief"), rs.getString("publisher"),
                        rs.getString("content"), rs.getString("category")));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public Book getBookById(String id) { //Must be int type because when saving to Session, it is still int
        String query = "SELECT * FROM book WHERE bookId = ?";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Book(rs.getString("bookId"), rs.getString("bookTitle"), rs.getString("author"),
                        rs.getString("brief"), rs.getString("publisher"),
                        rs.getString("content"), rs.getString("category"));
            }
        } catch (Exception e) {

        }
        return null;
    }
    
    public void delete(String id) {
        String query = "DELETE FROM contain  WHERE bookid = ?\n"
                + "DELETE FROM book WHERE bookid = ?";
        try {
            ps = connection.prepareStatement(query);
            //Put the id inside the first "?"
            ps.setString(1, id);
            ps.setString(2, id);
            //Execute: No Result table -> No RS, only executeUpdate execute
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    

    public void edit(String id, String title, String author, String brief,
            String publisher, String content, String category) {
        String query = "UPDATE book\n"
                + " SET bookTitle = ?,\n"
                + "author = ?,\n"
                + "brief = ?,\n"
                + "publisher = ?,\n"
                + "content = ?,\n"
                + "category = ?\n"
                + "WHERE bookId = ?";
        try {
            ps = connection.prepareStatement(query);
            //Set data to the "?"
            ps.setString(1, title);
            ps.setString(2, author);
            ps.setString(3, brief);
            ps.setString(4, publisher);
            ps.setString(5, content);
            ps.setString(6, category);
            ps.setString(7, id);
            ps.executeUpdate();
        } catch (Exception e) {

        }
    }

    public void add(String id, String title, String author, String brief,
            String publisher, String content, String category){

        String query = "INSERT INTO book VALUES (?, ?, ?, ?, ?, ?, ?);";
        try {
            ps = connection.prepareStatement(query);
            //Set data to the "?"
            ps.setString(1, id);
            ps.setString(2, title);
            ps.setString(3, author);
            ps.setString(4, brief);
            ps.setString(5, publisher);
            ps.setString(6, content);
            ps.setString(7, category);
            ps.executeUpdate();

        } catch (Exception e) {

        }

    }
    
    
    public static void main(String args[]){
        BookDAO bd = new BookDAO();
//        System.out.println("Dit me m");
//        List<Book> bs = bd.getAllBooks();
        
        Book b = bd.getBookById("00");
        System.out.println(b);
        
    }

}
