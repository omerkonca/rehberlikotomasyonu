/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author user
 */
public class connectiondb {
    
    private java.sql.Connection conn = null; //Bağlantı nesnemiz
private String url = "jdbc:mysql://localhost/proje_rehberlik?useUnicode=true&amp;characterEncoding=utf8";//veritabanının adresi ve portu
//private String url2 = "jdbc:mysql://fdb5.biz.nf/1881618_teknik?useUnicode=true&amp;characterEncoding=utf8";
//private String userName2 = "1881618_teknik";
//private String password2 = "teknik_1071";
private String dbName = "proje_rehberlik"; //veritabanının ismi
private String properties= "?useUnicode=true&amp;characterEncoding=utf8"; //Türkçe karakter problemi yaşamamak için
private String driver = "com.mysql.jdbc.Driver";//MySQL-Java bağlantısını sağlayan JDBC sürücüsü
private String userName = "onur52"; //veritabanı için kullanıcı adı
private String password = "onur52"; //kullanıcı şifresi


public java.sql.Statement conopen() throws Exception{
Class.forName(driver).newInstance();
 conn = DriverManager.getConnection(url, userName, password);

 return conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_UPDATABLE);


}
public void conclose() throws Exception{
    conn.close();
   
    
}
  public PreparedStatement conopenparam(String sql) throws Exception{
   Class.forName("com.mysql.jdbc.Driver").newInstance();
  
    conn = DriverManager.getConnection(url , userName,password);
    
    return conn.prepareStatement(sql);
    
    }
}
