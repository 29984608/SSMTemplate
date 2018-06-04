package edu.eurasia.controller;

import edu.eurasia.entity.User;
import edu.eurasia.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author:Yang
 * @date:2018/5/30
 */
@Controller
public class LoginController {
    @Autowired
    LoginService loginService;

    @RequestMapping("/index")
    public String index(){
        return "index";
    }

    @RequestMapping("/login")
    @ResponseBody
    public Map<String, Object> login(HttpSession session, User user) throws  Exception{
        Map<String, Object> result = new HashMap<String, Object>();
        User userInfo = loginService.login(user);
        if (userInfo != null ){
            session.setAttribute("userInfo",userInfo);
            result.put("success",true);
        }else{
            result.put("success",false);
        }
        return result;
    }
    @RequestMapping("/queryProfession")
    @ResponseBody
    public List<User> queryProfession() throws Exception{
        List<User> list= loginService.queryProfession();
        return list;
    }

}
