package MVC;

public class user {
    private int id;
    private String username;
    private String code;   //之前这里写的是password  就无法返回密码，因为表中列的名称是code

    public String getCode() {
        return code;
    }

    public void setCode(String password) {
        this.code = password;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
}