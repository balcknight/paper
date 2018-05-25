package com.zr.controller;

import com.zr.pojo.User;
import com.zr.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("user")
public class UserController {
    @Autowired
    private UserService userService;
    @Autowired
    private QuesController quesController;
    @RequestMapping("index.html")
    public String loginPage(){
        return "login";
    }

    @RequestMapping(value = "loginCheck")
    public String loginCheck(HttpServletRequest request,User user,Model model){
        User isUser =  userService.loginCheck(user);
        if (isUser==null) {
            model.addAttribute("error","用户名或密码错误");
            return "redirect:/";
        } else {
            request.getSession().setAttribute("user", isUser);
            return "redirect:/question/list.do";
        }
    }

    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    public QuesController getQuesController() {
        return quesController;
    }

    public void setQuesController(QuesController quesController) {
        this.quesController = quesController;
    }
}
