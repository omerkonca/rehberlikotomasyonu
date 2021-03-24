/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package projem;

/**
 *
 * @author user
 */
public class bilgiler {
     public static String adi;
    public static String soyadi;
       public static String  tecem;
    public static String kullanici_adi;
    public static int  kullanici_ID;
    public static int  ogrenci_IDsi;
    public static int  kullanici_IDsi;
 
    
    public String getAdi()
{
return adi;
}

public  void setAdi(String adi)
{
this.adi=adi;
}
public String getSoyadi()
{
    
    
return soyadi;
}
public void setSoyadi(String soyadi)
{
this.soyadi=soyadi;
}
public String getk_adi()
{
return kullanici_adi;
}
public void setk_adi(String k_adi)
{
this.kullanici_adi=k_adi;
}

public int getIDsi()
{
return kullanici_ID;
}
public void setIDsi(int IDsi)
{
this.kullanici_ID=IDsi;
}

public int getogrIDsi()
{
return ogrenci_IDsi;
}
public void setogrIDsi(int ogrIDsi)
{
this.ogrenci_IDsi=ogrIDsi;
}

public int getk_numara()
{
return kullanici_IDsi;
}
public void setk_numara(int k_numara)
{
this.kullanici_IDsi=k_numara;
}
public String getogr_tc()
{
return tecem;
}
public void setogr_tc(String ogr_tc)
{
this.tecem=ogr_tc;
}
    
}
