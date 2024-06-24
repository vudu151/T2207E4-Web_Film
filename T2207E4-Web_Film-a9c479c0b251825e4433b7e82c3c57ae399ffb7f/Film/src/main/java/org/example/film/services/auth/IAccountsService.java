package org.example.film.services.auth;

import org.example.film.models.entities.Account;
import org.example.film.models.entities.Job;
import org.springframework.security.core.userdetails.UserDetailsPasswordService;
import org.springframework.security.core.userdetails.UserDetailsService;

import java.util.List;
import java.util.Optional;

public interface IAccountsService extends UserDetailsService, UserDetailsPasswordService {
    List<Account> getListAccounts();
    Optional<Account> getAccountById(String id);
}
