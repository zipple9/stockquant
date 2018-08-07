package MVC;

import MVC.DAO.userDAO;
import MVC.model.userLoginForm;
import MVC.service.userService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {


    @RequestMapping("/")
    public String showPage(){
        System.out.println("已执行showPage方法");
        return "login";
    }

    @RequestMapping("/index")
    public String showIndex(){
        System.out.println("已执行showIndex方法");
        return "index";
    }
    @RequestMapping("/login")
    public String login(@RequestParam("username")String username,@RequestParam("password")String password){
        System.out.println("已执行login方法");
//        userLoginForm usf=new userLoginForm(username,password);   // 这个总感觉没必要
        System.out.println("username:"+username);
        System.out.println("password:"+password);

        ApplicationContext ac=new ClassPathXmlApplicationContext("AC.xml");
        userDAO mapper = (userDAO) ac.getBean("userMapper");
        if(password.equals(mapper.selectByUsername(username).getCode())){
            System.out.println("login successful");
            user us=mapper.selectByUsername(username);
            return "main";
        }
        else {
            System.out.println("username or password is wrong");
        }
        return "index";
    }

}
