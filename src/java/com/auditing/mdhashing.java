/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.auditing;
 
import java.io.File;
    import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Rajesh
 */
public class mdhashing {
    
    
   
    private static final Logger logger = Logger.getLogger(mdhashing.class.getName());
   
    public static void main(String args[]) {
        String file = "C:/temp/abc.txt";
      
        System.out.println("MD5 checksum for file using Java :                          "
                            + checkSum(file));
//        System.out.println("MD5 checksum of file in Java using Apache commons codec:    "
//                            + checkSumApacheCommons(file));

    }
  
    /*
     * Calculate checksum of a File using MD5 algorithm
     */
    public static String checkSum(String path){
        String checksum = null;
        try {
            FileInputStream fis = new FileInputStream(path);
            MessageDigest md = MessageDigest.getInstance("MD5");
          
            //Using MessageDigest update() method to provide input
            byte[] buffer = new byte[8192];
            int numOfBytesRead;
//            while( (numOfBytesRead = fis.read(buffer)) &gt; 0){
//                md.update(buffer, 0, numOfBytesRead);
//            }
            byte[] hash = md.digest();
            checksum = new BigInteger(1, hash).toString(16); //don't use this, truncates leading zero
        } catch (IOException ex) {
            logger.log(Level.SEVERE, null, ex);
        } catch (NoSuchAlgorithmException ex) {
            logger.log(Level.SEVERE, null, ex);
        }
          
       return checksum;
    }


    public static  byte[] createSha1(File file) throws Exception  {
    MessageDigest digest = MessageDigest.getInstance("SHA-1");
    InputStream fis = new FileInputStream(file);
    int n = 0;
    byte[] buffer = new byte[8192];
    while (n != -1) {
        n = fis.read(buffer);
        if (n > 0) {
            digest.update(buffer, 0, n);
        }
    }
    return digest.digest();
}
    
    public static String shaa(String pathaa) throws Exception
    {
       // String datafile = "c:\\INSTLOG.TXT";
 
    MessageDigest md = MessageDigest.getInstance("SHA1");
    FileInputStream fis = new FileInputStream(pathaa);
    byte[] dataBytes = new byte[1024];
 
    int nread = 0; 
 
    while ((nread = fis.read(dataBytes)) != -1) {
      md.update(dataBytes, 0, nread);
    };
 
    byte[] mdbytes = md.digest();
 
    //convert the byte to hex format
    StringBuffer sb = new StringBuffer("");
    for (int i = 0; i < mdbytes.length; i++) {
    	sb.append(Integer.toString((mdbytes[i] & 0xff) + 0x100, 16).substring(1));
    }
 
    System.out.println("Digest(in hex format):: " + sb.toString());
 return sb.toString();
  }
    
    
}
