package org.example.film.models.entities.oauth2;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import lombok.*;
import org.hibernate.annotations.GenericGenerator;

import java.sql.Blob;
@Entity
@Table(name = "oauth_access_token")
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Builder
public class OauthAccessToken {
    @Id
    @GenericGenerator(name="random_id", strategy = "org.example.film.commons.custom.RandomIdGenerator")
    @GeneratedValue(generator = "random_id")    //Dung name="random_id" ben tren de tao
    @Column(name = "authentication_id")
    private String id;

    @Column(name = "token_id")
    @NotNull
    private String tokenid;
    @Column(name = "token")
    @NotNull
    private Blob token;
    @Column(name = "user_name")
    @NotNull
    private String username ;
    @Column(name = "client_id")
    @NotNull
    private String clientid ;
    @Column(name = "authentication")
    @NotNull
    private Blob authentication;
    @Column(name = "refresh_token")
    @NotNull
    private String refreshtoken;
}
