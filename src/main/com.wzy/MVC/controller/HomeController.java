package MVC.controller;

import MVC.DAO.DAO;
import MVC.DAO.userDAO;
import MVC.main;
import MVC.user;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
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
    @ResponseBody
    @RequestMapping("/test")
    public user controllerTest(){
        System.out.println("已执行test方法");
        user us=new user(010003,"xiaomao","999999");
        return us;
    }
    @RequestMapping("/test2")
    public String controllerTest2(){
        System.out.println("已执行test2方法");
        return "test";
    }

    @RequestMapping("/login")
    public ModelAndView login(@RequestParam("username")String username,@RequestParam("password")String password){
        System.out.println("已执行login方法");
//        userLoginForm usf=new userLoginForm(username,password);   // 这个总感觉没必要
        System.out.println("username:"+username);
        System.out.println("password:"+password);

        userDAO Dao=DAO.getDAO();
        if(Dao.selectByUsername(username)!=null && password.equals(Dao.selectByUsername(username).getCode())){
            //这边有个经典知识点复现：即&和&&的区别 前一个条件为f，后面就不判断了，不然后会有Nullpointer 异常
            System.out.println("login successful");
            main.userSession=Dao.selectByUsername(username);
            ModelAndView mv = new ModelAndView();
            mv.setViewName("main");
            mv.addObject("u1", main.userSession.getUsername());
//            mv.addObject("d2", null);
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
