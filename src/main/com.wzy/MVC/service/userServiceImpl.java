package MVC.service;

import MVC.user;
import org.springframework.beans.factory.annotation.Autowired;

public class userServiceImpl implements userService {

    public user login(String username,String password){
        user us=new user();
        us.setCode(password);
        us.setUsername(username);

        return us;



    }

}
