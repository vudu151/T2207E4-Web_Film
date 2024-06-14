package org.example.film.models.entities;

import jakarta.persistence.*;
import lombok.*;
import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "images_movies")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class ImagesMovies {
    @Id
    @GenericGenerator(name="random_id", strategy = "org.example.film.commons.custom.RandomIdGenerator")
    @GeneratedValue(generator = "random_id")    //Dung name="random_id" ben tren de tao
    @Column(name = "id")
    private String id;

    @Column(name = "link")
    private String link;

    @ManyToOne
    @JoinColumn(name = "movie_id")
    private Movies movieId;

    private int Status;
}
