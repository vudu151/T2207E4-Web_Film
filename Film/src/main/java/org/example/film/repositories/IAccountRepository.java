package org.example.film.repositories;

import org.example.film.models.entities.Account;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface IAccountRepository extends JpaRepository<Account, String> {
    Optional<Account> findByUserName(String userName);
    Optional<Account> findByEmail(String email);
    Optional<Account> findUserNameByEmail(String email);
    Optional<Integer> findLevelByEmail(String email);
    Optional<Account> findAvatarByEmail(String email);

    Optional<Account> findByConfirmationToken(String token);

}
