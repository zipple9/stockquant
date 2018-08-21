package MVC.DAO;

import MVC.common.stockdata;
import MVC.user;
import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

public interface userDAO {
    //这里以接口形式定义了数据库操作方法,我们只需在Mybatis映射文件中对其进行映射就可以直接使用
    user selectById(int id);
    user selectByUsername(String username);

    public void insertStockData(stockdata sd,String tableName);
//    public void createNewTbale(String tN);

    int addStockData(@Param("tableName")String tableName, @Param("stockdata")stockdata sd);

    int createTable(@Param("tableName") String tableName);

    String[] getAllTableNames();

    stockList queryByStockId(String stockid);
    List<stockdata> queryShow(@Param("tableName") String tableName);

    void deleteStockList();
    void createStockList();
    void insertStockList(List stockInfoList);


}