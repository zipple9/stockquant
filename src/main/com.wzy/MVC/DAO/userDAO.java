package MVC.DAO;

import MVC.common.stockdata;
import MVC.user;
import org.apache.ibatis.annotations.Param;

public interface userDAO {
    //这里以接口形式定义了数据库操作方法,我们只需在Mybatis映射文件中对其进行映射就可以直接使用
    public user selectById(int id);
    public user selectByUsername(String username);

    public void insertStockData(stockdata sd,String tableName);
    public void createNewTbale(String tN);

    int addStockData(@Param("tableName")String tableName, @Param("stockdata")stockdata sd);

}