package org.example.film.commons.validations;

import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;
import org.example.film.models.requests.auth.RegisterRequest;

public class MatchPasswordValidator implements ConstraintValidator<MatchPassword, RegisterRequest> {

    @Override
    public boolean isValid(RegisterRequest registerRequest, ConstraintValidatorContext constraintValidatorContext) {
        return registerRequest != null && registerRequest.getPassword() != null && registerRequest.getRePassword().equals(registerRequest.getRePassword());
    }
}
