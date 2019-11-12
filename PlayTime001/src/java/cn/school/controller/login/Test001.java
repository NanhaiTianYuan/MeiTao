package cn.school.controller.login;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/login")
public class Test001 {

    @RequestMapping(value = "/main")
    public  String getLogin(){
        return "main";
    }

    @RequestMapping(value = "/nock")
    public  String getnock(){
        return "lock_screen";
    }
    @RequestMapping(value = "/login")
    public  String getlogout(){
        return "login";
    }
    @RequestMapping(value = "/table")
    public  String gettable(){
        return "advanced_table";
    }
}
