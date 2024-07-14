package org.example.film.models.entities.oauth2;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import lombok.*;
import org.hibernate.annotations.GenericGenerator;

import java.sql.Blob;
import java.sql.Timestamp;

@Entity
@Table(name = "persistent_logins")
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Builder
public class persistentLogin {
    @Column(name = "user_name")
    @NotNull
    private String username ;
    @Id
    @GenericGenerator(name="random_id", strategy = "org.example.film.commons.custom.RandomIdGenerator")
    @GeneratedValue(generator = "random_id")    //Dung name="random_id" ben tren de tao
    @Column(name = "series")
    private String id;


    @Column(name = "token")
    @NotNull
    private String token;
    @Column(name = "last_used")
    @NotNull
    private Timestamp lastused;
}
