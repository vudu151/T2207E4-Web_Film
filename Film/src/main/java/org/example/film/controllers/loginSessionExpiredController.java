package org.example.film.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class loginSessionExpiredController {
    @GetMapping("/session-expired")
    public String sessionExpired() {
        return "public/loginSessionExpired/session-expired"; // Trả về tên của view mà bạn muốn hiển thị khi phiên hết hạn
    }
}
