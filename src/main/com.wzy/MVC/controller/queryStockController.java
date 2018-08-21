package MVC.controller;

import MVC.DAO.DAO;
import MVC.DAO.stockList;
import MVC.DAO.userDAO;
import MVC.common.stockdata;
import MVC.main;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.io.File;
import java.util.List;

@Controller
public class queryStockController {

    @RequestMapping("/main/query")
    public ModelAndView queryStock(@RequestParam("stockId") String stockId){
        userDAO Dao=DAO.getDAO();

        boolean state=false;  //检验查询状态
//        stockList st=Dao.queryByStockId("600919");
//        System.out.println(st);
        ModelAndView mv=new ModelAndView();
        mv.setViewName("main");
        mv.addObject("u1", main.userSession.getUsername());

        try {
            String tableName=stockId+Dao.queryByStockId(stockId).stockname;
            List<stockdata> sl=Dao.queryShow(tableName);
            mv.addObject("d1",Dao.queryByStockId(stockId).stockname);
            mv.addObject("d2",sl);
            state=true;
        }
        catch (Exception e){
            mv.addObject("d1","股票代码输入错误");
            state=false;
        }
        finally {
            System.out.println("web查询股票代码 "+stockId+": "+state);
            return mv;
        }
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
