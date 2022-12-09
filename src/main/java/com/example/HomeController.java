package com.example;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;


@Controller
public class HomeController {

    @RequestMapping("/") // 루트에서 요청 오면 실행
    public String home() {
        System.out.println("home ~~");
        return "index"; // 어떤 view에 보여질지, /WEB-INF/views/index.jsp
    }

    @RequestMapping("/home")
    public String home2() {
        System.out.println("home ~~");
        return "home";
    }

    @RequestMapping("classlist")
    public String list(Model model){
        List<String> list = new ArrayList<String>();
        list.add("실전프로젝트1");
        list.add("컴퓨터구조");
        list.add("컴퓨터비전");
        list.add("이산수학");
        model.addAttribute("classlist", list);
        String msg = "2학년 2학기교과목리스트";
        model.addAttribute("title", msg);
        return "list";
    }

}
