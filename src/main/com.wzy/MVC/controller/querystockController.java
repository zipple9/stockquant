package MVC.controller;

import MVC.DAO.DAO;
import MVC.DAO.userDAO;
import MVC.main;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.io.File;

@Controller
public class querystockController {

    @RequestMapping("/main/query")
    public ModelAndView queryStock(@RequestParam("stockName") String stockName){
        userDAO mapper=DAO.getMapper();




        ModelAndView mv=new ModelAndView();
        mv.setViewName("main");
        mv.addObject("u1", main.userSession.getUsername());

        System.out.println(stockName);
        return mv;
     }

    @RequestMapping("/test/{stockName}")
    public File test(@PathVariable String stockName){
//        ModelAndView mv=new ModelAndView();
//        mv.setViewName("main");
//        mv.addObject("u1", main.userSession.getUsername());
        File f=new File("F:\\Java\\project\\UserManager3.1\\src\\main\\Config\\tt.txt");
        System.out.println(stockName);
        return f;
    }

}
