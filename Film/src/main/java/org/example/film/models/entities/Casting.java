package org.example.film.models.entities;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import lombok.*;
import org.hibernate.annotations.GenericGenerator;

import java.util.List;

@Entity
@Table(name = "casting")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Casting {
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

    @ManyToOne
    @JoinColumn(name = "job_id")
    private Job jobs;

    @Column(name = "status")
    private int status;
}
