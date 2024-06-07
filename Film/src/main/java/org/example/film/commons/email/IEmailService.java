package org.example.film.commons.email;

import jakarta.mail.MessagingException;

public interface IEmailService {
    void sendEmail(String to, String subject, String content) throws MessagingException;
}
