package MVC.DAO;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class DAO {
    private static ApplicationContext ac;
    static {
        ac = new ClassPathXmlApplicationContext("AC.xml");
    }
    public static userDAO getMapper(){
        userDAO mapper = (userDAO) ac.getBean("userMapper");
        return mapper;
    }

}
