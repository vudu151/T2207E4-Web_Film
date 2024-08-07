package org.example.film.models.entities;

import jakarta.persistence.*;
import jakarta.validation.constraints.Email;
import lombok.*;
import org.hibernate.annotations.GenericGenerator;

import java.time.LocalDateTime;
import java.util.Collection;

@Entity
@Table(name = "accounts")
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Builder
public class Account {
    @Id
    @GenericGenerator(name="random_id", strategy = "org.example.film.commons.custom.RandomIdGenerator")
    @GeneratedValue(generator = "random_id")    //Dung name="random_id" ben tren de tao
    @Column(name = "id")
    private String id;

    @Column(name = "username")
    private String userName;

    @Column(name = "password")
    private String password;

    @Column(name = "address")
    private String address;

    @Column(name = "gender")
    private boolean gender;

    @Email
    @Column(name = "email", unique = true)
    private String email;

    @Column(name = "avatar")
    private String avatar = "https://res.cloudinary.com/vuxuandu/image/upload/v1717518217/fptaptech/2b59d49a-84d8-4b14-9013-2066c6fb2ef3.png.png\n";

    @Column(name = "google_id")
    private String google_id;

    @Column(name = "active")
    private Boolean active;

    @Column(name = "level")
    private int level;

    //Many-To-Many: Accounts-Roles
    @ManyToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @JoinTable(
            name = "accounts_roles",
            joinColumns = @JoinColumn(name = "account_id"),
            inverseJoinColumns = @JoinColumn(name = "role_id")
    )
    private Collection<Role> roles;

    @Enumerated(EnumType.STRING)
    private org.example.film.models.enums.Provider provider;

    public org.example.film.models.enums.Provider getProvider() {
        return provider;
    }

    public void setProvider(org.example.film.models.enums.Provider provider) {
        this.provider = provider;
    }
    @Column(name = "confirmation_token")
    private String confirmationToken;
    @Column(name = "token_expiration_date")
    private LocalDateTime tokenExpirationDate;
}
