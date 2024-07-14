package org.example.film.services.email;

import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
public class EmailService2 {
    @Autowired
    private JavaMailSender javaMailSender;

    @Autowired
    private HttpServletRequest request;
    public void sendConfirmationEmail(String email, String confirmationToken ) {
        SimpleMailMessage message = new SimpleMailMessage();
         // Get the current URL
        String currentUrl = request.getRequestURL().toString();

        // Construct the confirmation link using the current URL and the confirmation token
        String confirmationLink = currentUrl.replace(request.getRequestURI(), "") + "/v1/auth/confirm-email?token=" + confirmationToken;
        message.setTo(email);
        message.setSubject("Confirm Your Email Address");
        message.setText("Please click the following link to confirm your email address:\n\n" + confirmationLink);
        javaMailSender.send(message);
    }
}