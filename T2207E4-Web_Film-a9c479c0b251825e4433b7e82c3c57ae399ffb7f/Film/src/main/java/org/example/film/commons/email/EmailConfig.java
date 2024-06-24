package org.example.film.commons.email;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;

@Configuration
public class EmailConfig {
    @Value("${spring.mail.username}")
    private String email;
    @Value("${spring.mail.password}")
    private String password;
}
