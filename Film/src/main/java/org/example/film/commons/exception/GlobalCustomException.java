package org.example.film.commons.exception;

import lombok.Getter;
import org.springframework.http.HttpStatus;

@Getter
public class GlobalCustomException extends RuntimeException{

    private final String message;
    private final HttpStatus status;

    public GlobalCustomException(String message, HttpStatus status) {
        this.message = message;
        this.status = status;
    }

}
