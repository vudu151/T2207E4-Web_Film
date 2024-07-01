package org.example.film.models.entities;

import jakarta.persistence.*;
import lombok.*;
import org.hibernate.annotations.GenericGenerator;

import java.util.Date;

@Entity
@Table(name = "reviews")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Reviews {
    @Id
    @GenericGenerator(name="random_id", strategy = "org.example.film.commons.custom.RandomIdGenerator")
    @GeneratedValue(generator = "random_id")    //Dung name="random_id" ben tren de tao
    @Column(name = "id")
    private String id;

    @ManyToOne
    @JoinColumn(name = "account_id")
    private Account account;

    private int star;

    @Lob
    @Column(name = "title", columnDefinition = "TEXT")
    private String title;

    @Lob
    @Column(name = "comment", columnDefinition = "TEXT")
    private String comment;

    @Column(name = "create_at")
    private Date createAt;

    @Column(name = "status")
    private int status;

    @ManyToOne
    @JoinColumn(name = "movie_id")
    private Movies movies;

}
