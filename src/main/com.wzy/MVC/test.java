package MVC;

import MVC.DAO.DAO;
import MVC.DAO.stockList;
import MVC.DAO.updateStockListDAO;
import MVC.DAO.userDAO;
import MVC.common.stockdata;

import java.io.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static MVC.main.ac;

public class test {
    int abc=6;

//    private static ApplicationContext ac;
//    static {
//        ac = new ClassPathXmlApplicationContext("AC.xml");
//    }



    public static void main(String[] args) throws IOException {
//        userDAO mapper = (userDAO) ac.getBean("userMapper");
//        userDAO mapper=DAO.getMapper();
        String un="wang";
        user us = DAO.getDAO().selectByUsername(un);
        System.out.println("ID: "+us.getId()+"\n"+"username: "+us.getUsername());
        System.out.println("password: "+us.getCode());




        List l=new ArrayList();
        Map<String,String> m1=new HashMap<String,String>();
        Map<String,String> m2=new HashMap<String,String>();
        m1.put("id","001");
        m1.put("name","jsyh");
        m2.put("id","002");
        m2.put("name","gsyh");
        l.add(m1);
        l.add(m2);



        userDAO Dao=DAO.getDAO();
        stockList st=Dao.queryByStockId("600919");
        stockdata[] sl=Dao.queryShow("600919江苏银行");
        System.out.println(st.stockname);
        for (stockdata i:sl){
            System.out.println(i.date);

        }






    }
}
