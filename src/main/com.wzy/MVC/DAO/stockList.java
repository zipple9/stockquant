package MVC.DAO;


import MVC.common.utils;

import java.util.ArrayList;
import java.util.List;


public class stockList {
    public String stockid;
    public String stockname;

    public void setStockname(String stockname) {
        this.stockname = stockname;
    }
    private void setStockid(String stockid){
        this.stockid=stockid;
    }

    public void update(){
        userDAO Dao=DAO.getDAO();
        String[] sl=Dao.getAllTableNames();

        List stockInfoList=new ArrayList();
//        ArrayList stockid=new ArrayList();
//        ArrayList stockname=new ArrayList();

        for(String s:sl){
            if(Character.isDigit(s.charAt(0))){
                stockList singleStockInfo=new stockList();
                singleStockInfo.setStockid((s.substring(0,6)));
                singleStockInfo.setStockname(s.substring(6));

                stockInfoList.add(singleStockInfo);     //思考此时内存空间的相关问题，为什么在代码块中new的对象放到list中就不会被消灭
            }
        }
        userDAO Mapper=DAO.getDAO();
        Mapper.deleteStockList();
        Mapper.createStockList();
        Mapper.insertStockList(stockInfoList);
        System.out.println("更新结束");
    }

}
