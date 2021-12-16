package model;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author ThuanMit
 */
public class Book {
    private String id;
    private String title;
    private String author;
    private String brief;
    private String publisher;
    private String content;
    private String category;

    public Book(String id, String title, String author, String brief, String publisher, String content, String category) {
        this.id = id;
        this.title = title;
        this.author = author;
        this.brief = brief;
        this.publisher = publisher;
        this.content = content;
        this.category = category;
    }

    public Book() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getBrief() {
        return brief;
    }

    public void setBrief(String brief) {
        this.brief = brief;
    }

    public String getPublisher() {
        return publisher;
    }

    public void setPublisher(String publisher) {
        this.publisher = publisher;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    @Override
    public String toString() {
        return "Book{" + "id=" + id + ", title=" + title + ", author=" + author + ", brief=" + brief + ", publisher=" + publisher + ", content=" + content + ", category=" + category + '}';
    }
    
    
    
    
}
