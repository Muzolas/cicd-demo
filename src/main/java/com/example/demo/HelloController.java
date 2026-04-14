package com.example.demo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {
    @GetMapping("/")
    public String index() {
        return "<h1>Merhaba Beishanng! CI/CD Calisiyor.</h1>";
    }
}
