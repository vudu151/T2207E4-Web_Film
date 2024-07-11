package org.example.film.models.entities;

import jakarta.persistence.*;
import lombok.*;
import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "writers")
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Builder
public class Writers {
    @Id
    @GenericGenerator(name="random_id", strategy = "org.example.film.commons.custom.RandomIdGenerator")
    @GeneratedValue(generator = "random_id")    //Dung name="random_id" ben tren de tao
    @Column(name = "id")
    private String id;

    @ManyToOne
    @JoinColumn(name = "movie_id")
    private Movies movies;

    @ManyToOne
    @JoinColumn(name = "celebrity_id")
    private Celebrity celebrity;

    @Column(name = "status")
    private int status;
}
