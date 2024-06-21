package org.example.film.repositories;

import org.example.film.models.entities.Account_Payment;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IAccountPaymentRepository extends JpaRepository<Account_Payment, String> {
}
