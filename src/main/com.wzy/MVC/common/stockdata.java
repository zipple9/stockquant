package MVC.common;


public class stockdata {

    private int stockNum = 0;
    private String date;
    private double open;
    private double high;
    private double low;
    private double close;
    private double volume;
    private double amount;


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


    public String getDate() {
        return date;
    }

    public double getOpen() {
        return open;
    }

    public double getHigh() {
        return high;
    }

    public double getLow() {
        return low;
    }

    public double getClose() {
        return close;
    }

    public double getVolume() {
        return volume;
    }

    public double getAmount() {
        return amount;
    }
}