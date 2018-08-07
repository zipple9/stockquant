package MVC.model;

import MVC.user;

public class userLoginForm {
    private String username;
    private String password;
    public userLoginForm(String username,String password){
        this.username=username;
        this.password=password;
    }
    public static user toUser(String username,String password){
        user us=new user();
        us.setUsername(username);
        us.setCode(password);
        return us;
    }
}
