package MVC.DAO;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import static MVC.main.ac;


public class DAO {
    public static userDAO getDAO(){
        userDAO mapper = (userDAO) ac.getBean("userMapper");
        return mapper;
    }

}
