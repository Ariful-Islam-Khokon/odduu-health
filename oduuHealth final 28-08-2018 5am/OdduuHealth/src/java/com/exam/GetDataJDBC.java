/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import javax.swing.JOptionPane;

/**
 *
 * @author l2pc215m
 */
public class GetDataJDBC extends BaseDAO {

    Connection con;

    public String getUserName(String mob) {
        String userName = "";

        try {
            con = getConnection();
            PreparedStatement pstmt = con.prepareStatement("SELECT uname FROM userreg where mobile='" + mob + "'");
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                userName = rs.getString("uname");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return userName;
    }
    
    
        public String getVisitingTime(int id) {
        String vtime = "";

        try {
            con = getConnection();
            PreparedStatement pstmt = con.prepareStatement("SELECT vtime FROM drtab WHERE id=" + id);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                vtime = rs.getString("vtime");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return vtime;
    }
    
      public int getCharge(int id) {
        int P = 0;
        try {
            con = getConnection();
            PreparedStatement pstmt = con.prepareStatement("select charge FROM drtab where id=" + id);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                P = rs.getInt("charge");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return P;
    }  
   
      public String getImage(int id) {
        String nm = "";
        try {
            con = getConnection();
            PreparedStatement pstmt = con.prepareStatement("select pic FROM drtab where id=" + id);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                nm = rs.getString("pic");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return nm;
    }  
      public String getDoctorName(int id) {
        String nm = "";
        try {
            con = getConnection();
            PreparedStatement pstmt = con.prepareStatement("select name FROM drtab where id=" + id);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                nm = rs.getString("name");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return nm;
    }  

      
      
    
    
    public List<String> getVisitingDate(int id) {

        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        List<String> dl = new ArrayList<>();
        List<String> fdl = new ArrayList<>();
        List<Date> addDL = new ArrayList<>();
        
        String day = "";
        try {
            con = getConnection();
            PreparedStatement pstmt = con.prepareStatement("SELECT day FROM drtab WHERE id=" + id);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                day = rs.getString("day");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        for (String retval : day.split(",")) {
            dl.add(retval);
        }

        Date currentDate = new Date();
        System.out.println(dateFormat.format(currentDate));

        // convert date to calendar
        Calendar c = Calendar.getInstance();
        c.setTime(currentDate);

        // finding last day number 28/30/31
        int mdnum = c.getActualMaximum(Calendar.DAY_OF_MONTH);
        // finding todays day number 
        int tdnum = c.get(Calendar.DAY_OF_MONTH);

        int count = 0;

        for (String s : dl) {
            int i = 0;
            if (s.equals("SATURDAY")) {
                i = Calendar.SATURDAY;
            }
            if (s.equals("SUNDAY")) {
                i = Calendar.SUNDAY;
            }
            if (s.equals("MONDAY")) {
                i = Calendar.MONDAY;
            }
            if (s.equals("TUESDAY")) {
                i = Calendar.TUESDAY;
            }
            if (s.equals("WEDNESDAY")) {
                i = Calendar.WEDNESDAY;
            }
            if (s.equals("THURSDAY")) {
                i = Calendar.THURSDAY;
            }
            if (s.equals("FRIDAY")) {
                i = Calendar.FRIDAY;
            }

            c.set(Calendar.DAY_OF_WEEK, i);
            addDL.add(c.getTime());
            count++;
            if (count >= 3) {
                break;
            }

        }
        for (Date d : addDL) {
            fdl.add(dateFormat.format(d));
        }
        return fdl;

    }

//for get avilable sit numbers

    public int getAvSit(String id, String dt) {
        String c = "";
        List<Integer> sarray = new ArrayList<>();
        try {
            con = getConnection();
            PreparedStatement pstmt = con.prepareStatement("SELECT sitid FROM transactiontab where id='" + id + "' and mdate='" + dt + "'");
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                c = rs.getString("sitid");
                for (String retval : c.split(",")) {
                    int sint = Integer.parseInt(retval);
                   
                        sarray.add(sint);
                    
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return sarray.size();
    }

//for get sold sit numbers
    public List<String> getSoldSit(String id, String dt) {
        String c = "";
      
        List<String> sarray = new ArrayList<>();
        try {
            con = getConnection();
            PreparedStatement pstmt = con.prepareStatement("SELECT sitid FROM transactiontab where id='"+id+"' and mdate='" + dt + "'");
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                c = rs.getString("sitid");
                for (String retval : c.split(",")) {
                    sarray.add(retval);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return sarray;
    }

//for get users buing sit numbers
    public int getUserBuingSeat(String id, String dt, String mob) {
        int c = 0;

        try {
            con = getConnection();
            PreparedStatement pstmt = con.prepareStatement("SELECT totalsit FROM transactiontab where id='" + id + "' and mdate='" + dt + "'and mobile='" + mob + "'");
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                c = c + rs.getInt("totalsit");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return c;
    }



    public boolean doConfirm(String md, String mn, String st, String sid, String user, int bill, int ts, String mob,String id) throws ParseException {
        int i = 0;
        try {
            con = getConnection();
            PreparedStatement pstmt = con.prepareStatement("INSERT INTO transactiontab(tdate,mdate,mname,showtime,sitid,user,bill,totalsit,mobile,id) VALUES (DATE(NOW()),DATE '" + md + "','" + mn + "','" + st + "','" + sid + "','" + user + "'," + bill + "," + ts + ",'" + mob +"','" + id+ "')");
            i = pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (i > 0) {
            return true;
        } else {
            return false;
        }
    }

}
