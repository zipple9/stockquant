package MVC.common;


public class stockdata {

    public int stockNum = 0;
    public String date;
    public double open;
    public double high;
    public double low;
    public double close;
    public double volume;
    public double amount;


    public void setStockNum(int stockNum) {
        this.stockNum = stockNum;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public void setOpen(double open) {
        this.open = open;
    }

    public void setHigh(double high) {
        this.high = high;
    }

    public void setLow(double low) {
        this.low = low;
    }

    public void setClose(double close) {
        this.close = close;
    }

    public void setVolume(double volume) {
        this.volume = volume;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }
}