package MVC;

import MVC.DAO.DAO;
import MVC.DAO.userDAO;
//import org.jsoup.Connection;
//import org.jsoup.Jsoup;
import MVC.common.dataProcess;
import MVC.common.dbOpreation;
import MVC.common.stockdata;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.io.*;

public class test {

//    private static ApplicationContext ac;
//    static {
//        ac = new ClassPathXmlApplicationContext("AC.xml");
//    }



    public static void main(String[] args) throws IOException {
//        userDAO mapper = (userDAO) ac.getBean("userMapper");
//        userDAO mapper=DAO.getMapper();
        user us = DAO.getMapper().selectByUsername("wang");
        System.out.println("ID: "+us.getId()+"\n"+"username: "+us.getUsername());
        System.out.println("password: "+us.getCode());

//        dataProcess.allFileProcess();

//        mapper.insertStockData(@Param("tableName") String tN,("stockdata")stockdata sd);

//        InputStream inputStream = Resources.getResourceAsStream("mybatis-config.xml");
//        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
//        SqlSession session = sqlSessionFactory.openSession();


//        dataProcess.process();

//        try{
//        Connection.Response response = Jsoup.connect("http://www.ifeng.com/").timeout(3000).execute();
//        System.out.println(response.body());
//        }
//        catch (Exception e){}

    }
}
