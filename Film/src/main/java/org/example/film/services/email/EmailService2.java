package org.example.film.services.email;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
public class EmailService2 {
    @Autowired
    private JavaMailSender javaMailSender;

    public void sendConfirmationEmail(String email, String confirmationToken ) {
        SimpleMailMessage message = new SimpleMailMessage();
        String confirmationLink = "http://localhost:8080/v1/auth/confirm-email?token=" + confirmationToken;

        message.setTo(email);
        message.setSubject("Confirm Your Email Address");
        message.setText("Please click the following link to confirm your email address:\n\n" + confirmationLink);
        javaMailSender.send(message);
    }
}