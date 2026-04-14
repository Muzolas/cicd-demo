package com.example.demo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {
    @GetMapping("/")
    public String index() {
        return "<h1>CI/CD Basarili!</h1><p>GitHub -> ngrok -> Jenkins -> Docker akisi calisiyor.</p>";
    }
}
