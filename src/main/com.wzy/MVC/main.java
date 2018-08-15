package MVC;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;



public class main {
    public static ApplicationContext ac;
    public static user userSession;


    static {
        ac = new ClassPathXmlApplicationContext("AC.xml");
    }
    public static void main(String[] args){


    }
}
