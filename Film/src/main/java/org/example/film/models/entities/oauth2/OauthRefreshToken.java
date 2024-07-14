package org.example.film.models.entities.oauth2;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.*;

import java.sql.Blob;

//@Entity
@Table(name = "oauth_refresh_token")
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Builder
public class OauthRefreshToken {
    @Column(name = "token_id")
    private String tokenid;

    @Column(name = "token")
    private Blob token;

    @Column(name = "authentication")
    private Blob authentication;

}
