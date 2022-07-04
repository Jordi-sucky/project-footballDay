package com.project.footballkorea;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class helloTest {

    @ResponseBody
    @GetMapping("/hello")
    public String helloWorld() {
        return "Hello World!!";
    }

}
