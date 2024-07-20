package org.example.film.repositories;


import org.example.film.models.entities.PaymentUser;
import org.springframework.data.jpa.repository.JpaRepository;

public interface IPaymentUser extends JpaRepository<PaymentUser,String> {

}
