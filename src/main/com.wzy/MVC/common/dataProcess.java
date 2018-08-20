package MVC.common;

import MVC.DAO.DAO;
import MVC.common.dbOpreation;
import MVC.common.stockdata;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;

public class dataProcess {

    public static void allFileProcess() {
        BufferedReader br = null;
        stockdata sd = new stockdata();

        String dir[]=new File("F:\\stockdata").list();
        for(int i=0;i<dir.length;i++){
            try {

                File f = new File("F:\\stockdata\\"+dir[i]);
                InputStreamReader e = new InputStreamReader(new FileInputStream(f), "GBK");
                br = new BufferedReader(e);
                String tableName = br.readLine();
                tableName = tableName.substring(0, 6) + tableName.substring(7, 11);
//                dbOpreation.createTable(tableName);
                DAO.getDAO().createTable(tableName);
                System.out.println("表 "+tableName+" 创建成功"); //这个不算 建表成功的判断  假的
                br.readLine();

                String str;
                while((str = br.readLine()) != null && str.length() > 10) {
                    String[] ar = str.split(",");
                    sd.setDate(ar[0]);
                    sd.setOpen(Double.parseDouble(ar[1]));
                    sd.setHigh(Double.parseDouble(ar[2]));
                    sd.setLow(Double.parseDouble(ar[3]));
                    sd.setClose(Double.parseDouble(ar[4]));
                    sd.setVolume(Double.parseDouble(ar[5]));
                    sd.setAmount(Double.parseDouble(ar[6]));
                    DAO.getDAO().addStockData(tableName, sd);
                }
                System.out.println("表 "+tableName+" 写入完毕");

            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                try {
                    br.close();
                } catch (Exception e) {}

            }

        }

    }
}