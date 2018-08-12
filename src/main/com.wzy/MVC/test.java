package MVC;

import MVC.DAO.DAO;

import java.io.*;

public class test {

//    private static ApplicationContext ac;
//    static {
//        ac = new ClassPathXmlApplicationContext("AC.xml");
//    }



    public static void main(String[] args) throws IOException {
//        userDAO mapper = (userDAO) ac.getBean("userMapper");
//        userDAO mapper=DAO.getMapper();
        String un="wang";
        user us = DAO.getMapper().selectByUsername(un);
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
