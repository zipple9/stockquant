package MVC.controller;

import MVC.DAO.DAO;
import MVC.DAO.userDAO;
import MVC.main;
import MVC.user;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {


    @RequestMapping(value = {"/home","/","index"})
    public ModelAndView showPage(){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("index");
        mv.addObject("tips","请输入用户名和密码：");
        System.out.println(mv.getViewName());
        return mv;
    }

    @RequestMapping("/test")
    public ModelAndView showIndex(){
        System.out.println("已执行showTest方法");
        ModelAndView mv = new ModelAndView();
        mv.setViewName("test");

        return mv;
    }
    @RequestMapping("/login")
    public ModelAndView login(@RequestParam("username")String username,@RequestParam("password")String password){
        System.out.println("已执行login方法");
//        userLoginForm usf=new userLoginForm(username,password);   // 这个总感觉没必要
        System.out.println("username:"+username);
        System.out.println("password:"+password);

        userDAO mapper=DAO.getMapper();
        if(mapper.selectByUsername(username)!=null && password.equals(mapper.selectByUsername(username).getCode())){
            //这边有个经典知识点复现：即&和&&的区别 前一个条件为f，后面就不判断了，不然后会有Nullpointer 异常
            System.out.println("login successful");
            main.userSession=mapper.selectByUsername(username);
            ModelAndView mv = new ModelAndView();
            mv.setViewName("main");
            mv.addObject("u1", main.userSession.getUsername());
            return mv;
        }
        else {
            System.out.println("username or password is wrong");
            ModelAndView mv = new ModelAndView();
            mv.setViewName("index");
            mv.addObject("tips","用户名或密码错误，请重新输入！");
            return mv;
        }

    }

}
