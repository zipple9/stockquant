package MVC.common;

import java.util.regex.Pattern;

public class utils {
    public static boolean isNumeric(String str) { //利用正则表达式，判断字符串是否为数字
        Pattern pattern = Pattern.compile("[0-9]*");
        return pattern.matcher(str).matches();
    }

}
