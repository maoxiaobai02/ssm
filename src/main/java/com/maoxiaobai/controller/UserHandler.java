package com.maoxiaobai.controller;

import com.maoxiaobai.entity.User;
import com.maoxiaobai.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/user")
public class UserHandler {
    @Autowired
    private UserService userService;

    @GetMapping("/findAll")
    public ModelAndView index(){
        List<User> list =userService.findAll();
        ModelAndView modelAndView=new ModelAndView();
        modelAndView.setViewName("index");
        modelAndView.addObject("list",list);
        return modelAndView;
    }
    @GetMapping("/findById/{id}")
    public ModelAndView findById(@PathVariable("id") long id){
        ModelAndView modelAndView=new ModelAndView();
        modelAndView.setViewName("update");
        modelAndView.addObject(userService.findById(id));
        return modelAndView;
    }
    @PostMapping("/update")
    public String update(User user){
        userService.update(user);
        return "redirect:/user/findAll";
    }
    @PostMapping("/save")
    public String save(User user){
        userService.save(user);
        return "redirect:/user/findAll";
    }
//    @GetMapping("/deleteById/#{id}")    多了一个#
    @GetMapping("/deleteById/{id}")
    public String deleteById(@PathVariable("id") long id){
        userService.deleteById(id);
        return "redirect:/user/findAll";
    }
}
