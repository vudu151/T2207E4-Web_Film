package org.example.film.repositories;

import org.example.film.models.entities.PaymentMethod;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IPaymentMethodRepository extends JpaRepository<PaymentMethod, String> {
}
