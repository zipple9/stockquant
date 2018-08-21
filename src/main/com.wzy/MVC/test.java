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
    public static int fb(int n){
        int tar;
        if(n==1){
            return 1;
        }
        if(n==2){
            return 1;
        }
        if(n>2){
            return fb(n-1)+fb(n-2);
        }
        return 0;
    }


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

        System.out.println(fb(6));

        System.out.println(un.toCharArray()[0]);









    }
}
