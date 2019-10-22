/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam;

import com.exam.drscedule.Drtab;
import com.exam.madding.Mschedule;
import com.exam.user.Userreg;
import com.sun.javafx.scene.control.skin.VirtualFlow;
import java.io.FileOutputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author l2pc209m
 */
@Controller
public class Mcontroller {

    String vis = "hid";
//-----user login part-------
    //reg user

    @RequestMapping("save.htm")
    public String doSave(@ModelAttribute("x") Userreg ur, Model m) {
        LDAO dao = new LDAO();
        dao.DoS(ur);
        return "login";
    }
    //log user

    @RequestMapping("loginC.htm")
    public String doLogin(@ModelAttribute("ln") Userreg ur, Model m) {
        LDAO dao = new LDAO();
        MDAO mdao=new MDAO();


        if (dao.DoC(ur.getMobile(), ur.getPassword())) {
            //set up user mobile number to send selecting movie page
            m.addAttribute("mnum", ur.getMobile());
            //m.addAttribute("un", gdj.getUserName(ur.getMobile()));

            //movie name send
            List<Drtab> st = mdao.getDoctorInfo();
            m.addAttribute("ai", "Select Doctor");
            m.addAttribute("bi", st);

            return "DoctorSelect";
        } else {
            m.addAttribute("msgulg", "Login Fail");
            return "login";
        }
    }
/*    
    
*/
    //log Admin
    @RequestMapping("loginAdmin.htm")
    public String doLogin(@ModelAttribute("ln") adminClass ur, Model m) {
        LDAO dao = new LDAO();
        MDAO mdao = new MDAO();

        // when admin name and password ok the are a fixed value it can be databse wise in future
        if (ur.getAdmin().equals("admin") && ur.getPassword().equals("admin")) {
            //for stutus panel movie selceting
            List<String> st = mdao.getDoctorInfo();

            m.addAttribute("bi", st);
            //visibility controll
            String vis = "hid";
            m.addAttribute("vis", vis);

            return "DoctorAdding";
        } else {
            m.addAttribute("msgalg", "Admin Login Fail");
            return "login";
        }
    }
    

//------movie adding or deleting   part-------    
    @RequestMapping("madding.htm")
    public String DoaddM(@ModelAttribute("add") Drtab mv, Model m) throws ParseException {
        MDAO dao = new MDAO();


        dao.doMAdd(mv);
        List<Mschedule> li = dao.getDoctorInfo();

        m.addAttribute("bi", li);
        
        //visibility controll
           String vis = "hid";
            m.addAttribute("vis", vis);
            
        return "DoctorAdding";
    }

    @RequestMapping("maddingdelte.htm")
    public String DoaddMDelete(@ModelAttribute("add2") Drtab mv, Model m) {
        MDAO dao = new MDAO();


        dao.doMDelete(mv);
        List<Mschedule> li = dao.getDoctorInfo();

        m.addAttribute("bi", li);
        
        //visibility controll
            String vis = "hid";
            m.addAttribute("vis", vis);
            
        return "DoctorAdding";
    }
    
    //updating
    @RequestMapping("mEdit.htm")
    public String mEdit(@ModelAttribute("add2") Drtab mv, Model m) {
        MDAO dao = new MDAO();
        int id=mv.getId();

        List<Mschedule> li = dao.getDoctorInfo();
        List<Drtab> sdoc = dao. getSelectedDocInfo(id);

        m.addAttribute("bi", li);
        m.addAttribute("sdoc", sdoc);
        
        //visibility controll
            String vis = "vis";
            m.addAttribute("vis", vis);
            
        return "DoctorAdding";
    }
    
    //Updating info of doctor
    @RequestMapping("mUpdate.htm")
    public String mUpdate(@ModelAttribute("add2") Drtab mv, Model m) {
        MDAO dao = new MDAO();

        dao.doUpdate(mv);
        List<Mschedule> li = dao.getDoctorInfo();

        m.addAttribute("bi", li);
        
        //visibility controll
            String vis = "hid";
            m.addAttribute("vis", vis);
            
        return "DoctorAdding";
    }


    //on movie change

    @RequestMapping("movieSelect.htm")
    public String DoMSelect(@ModelAttribute("ms1") Billing b, Model m) {
        String id = b.getId();
        
        String a= b.getMovieName();
        MDAO mdao = new MDAO();
        GetDataJDBC gdj = new GetDataJDBC();
        List<Drtab> st = mdao.getDoctorInfo();
        List<Drtab> sdoc = mdao. getSelectedDocInfo(Integer.parseInt(id));
               
        List<String> md = gdj.getVisitingDate(Integer.parseInt(id));
        String vt = gdj.getVisitingTime(Integer.parseInt(id));
        String imst = gdj.getImage(Integer.parseInt(id));
       // st.remove(a);
        m.addAttribute("mnum", b.getUserNumber());
        m.addAttribute("bi", st);
        m.addAttribute("sdoc", sdoc);
        m.addAttribute("ai", a);// dr id will be name
        m.addAttribute("id", id);// dr id will be name
        m.addAttribute("mdt", md);
        m.addAttribute("imst", imst);
        m.addAttribute("vt", vt);
        return "DoctorSelect";
    }
    
    
    //for go to sitmap page
    @RequestMapping("goMainPage.htm")
    public String goMainPage(@ModelAttribute("ms3") Billing b, Model m) {
        GetDataJDBC gdj = new GetDataJDBC();
        

        String mname = b.getMovieName();
        String id = b.getId();
        String mdate = b.getShowDate();
        String mtime = b.getsTime();
        MDAO mdao=new MDAO();
         List<Drtab> sdoc = mdao. getSelectedDocInfo(Integer.parseInt(id));

        int aals = 20 - gdj.getAvSit(id, mdate);
        
        //fining charge fee of doctor
        
        int charge=gdj.getCharge(Integer.parseInt(id));
        String dnam=gdj.getDoctorName(Integer.parseInt(id));
      
        //all sold sit id in a array to String converting
        List<String> soldSit = gdj.getSoldSit(id, mdate);
        String sslds = "";

        if (soldSit.size() > 0) {

            int i;
            for (i = 0; i < (soldSit.size() - 1); i++) {
                sslds = sslds + soldSit.get(i) + ",";
            }
            sslds = sslds + soldSit.get(i);
        }


        //counting available seat for user
        int availSeatForUser = 4 - gdj.getUserBuingSeat(id, mdate,b.getUserNumber());

        //sending value to sitMap page
        m.addAttribute("mn", mname);
        m.addAttribute("md", mdate);
        m.addAttribute("mt", mtime);
        m.addAttribute("id", id);    
        m.addAttribute("sdoc", sdoc);
        m.addAttribute("aals", aals);        
        m.addAttribute("charge", charge);        
        m.addAttribute("dnam", dnam);        

        m.addAttribute("ssit", sslds);//all sold sit id in a attribute
        m.addAttribute("mnum", b.getUserNumber()); //user pn number sending will be hiden
        m.addAttribute("userName", gdj.getUserName(b.getUserNumber()));
        m.addAttribute("uavs", availSeatForUser); //user pn number sending will be hiden
        return "sitMap";
    }

    // billing conferming page... page name test.jsp
    @RequestMapping("gobilling.htm")
    public String DoNext(@ModelAttribute("ms2") Billing b, Model m) {
        GetDataJDBC gdj = new GetDataJDBC();
        
        String id = b.getId();

        m.addAttribute("md", b.getShowDate());
        m.addAttribute("mn", b.getMovieName());
        m.addAttribute("mt", b.getsTime());
        m.addAttribute("sitid", b.getIdval());
        m.addAttribute("mnum", b.getUserNumber());
        m.addAttribute("userName", gdj.getUserName(b.getUserNumber()));
         m.addAttribute("id",b.getId());
        m.addAttribute("bl", b.getBillc());
        m.addAttribute("ts", b.getTsit());
        return "test";
    }

    
    
    @RequestMapping("confirm.htm")
    public String DoConfirm(@ModelAttribute("ms2") FinalBilling b, Model m) throws ParseException {
        GetDataJDBC jd = new GetDataJDBC();

        String md = b.getShowDate();
        String mn = b.getMovieName();
        String mt = b.getsTime();
        String id = b.getId();
        String sitid = b.getIdval();
        String user = b.getUser();
        String umobile = b.getMobile();
        int bl = Integer.parseInt(b.getBillc());
        int ts = b.getTsit();

        if (jd.doConfirm(md, mn, mt, sitid, user, bl, ts, umobile,id)) {
            m.addAttribute("ai", "success!!! \n\n a file named page hasben sent to your desktop...print and show that on Entry time ");
            PdfGenarator pdg=new PdfGenarator();
            //Report Call here
            Connection con;
           
                pdg.pdf();
           
            return "confirmationPage";

        } else {
            m.addAttribute("ai", "Somethin wrong data can not be inserted!!!");
            return "confirmationPage";
        }
        
        

    }
    

}
