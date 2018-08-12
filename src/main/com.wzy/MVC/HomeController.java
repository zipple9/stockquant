package MVC;

import MVC.DAO.DAO;
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
    public ModelAndView login(@RequestParam("username")String username,@RequestParam("password")String password){
        System.out.println("已执行login方法");
//        userLoginForm usf=new userLoginForm(username,password);   // 这个总感觉没必要
        System.out.println("username:"+username);
        System.out.println("password:"+password);

        userDAO mapper=DAO.getMapper();
        if(password.equals(mapper.selectByUsername(username).getCode())){
            System.out.println("login successful");
            user us=mapper.selectByUsername(username);
            ModelAndView mv = new ModelAndView();
            mv.setViewName("main");
            mv.addObject("u1", us.getUsername());


            return mv;
        }
        else {
            System.out.println("username or password is wrong");
            ModelAndView mv = new ModelAndView();
            mv.setViewName("index");
            return mv;
        }
    }

}
