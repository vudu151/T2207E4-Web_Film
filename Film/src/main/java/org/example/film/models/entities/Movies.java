package org.example.film.models.entities;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import lombok.*;
import org.hibernate.annotations.GenericGenerator;

import java.util.Date;
import java.util.List;

@Entity
@Table(name = "movies")
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Builder

public class Movies {
    @Id
    @GenericGenerator(name="random_id", strategy = "org.example.film.commons.custom.RandomIdGenerator")
    @GeneratedValue(generator = "random_id")    //Dung name="random_id" ben tren de tao
    @Column(name = "id")
    private String id;

    @Column(name = "name")
    private String name;

    @Column(name = "total_episode")
    private int totalEpisode;

    @Column(name = "poster")
    private String poster;

    @Column(name = "releaseDate")
    private Date release;

    @Column(name = "total_duration")
    private int totalDuration;

    @Column(name = "mmpa_rating")
    private String mmpaRating;

    @Column(name = "keywords")
    private String keyWords;

    @Lob
    @Column(name = "description", columnDefinition = "TEXT")
    private String description;

    @Column(name = "totalView")
    private int totalView;

    @Column(name = "is_series")
    private int isSeries;

    @Column(name = "level")
    private int level;

    @Column(name = "create_at")
    private Date createAt;

    @Column(name = "is_popular")
    private int isPopular;

    @Column(name = "screening_status")
    private int screeningStatus;

    @Column(name = "trailer")
    private String trailer;

    @ManyToOne
    @JoinColumn(name = "category_movieId")
    private CategoryMovie categoryMovieId;

    @ManyToOne
    @JoinColumn(name = "genre_id")
    private Genre Genre;

    @ManyToMany(fetch = FetchType.LAZY, cascade = {
            CascadeType.DETACH, CascadeType.MERGE,
            CascadeType.PERSIST, CascadeType.REFRESH
    })
    @JoinTable(
            name = "genres_movies",
            joinColumns = @JoinColumn(name = "movie_id"),
            inverseJoinColumns = @JoinColumn(name = "genre_id")
    )
    private List<Genre> genreList;


    @ElementCollection                          //1 celebrity co nhieu image => Nhung khong can tao Entity rieng cho imgae ma luu tru truc tiep trong Entity Celebrity
    @CollectionTable(name = "images_movies",
            joinColumns = @JoinColumn(name = "movie_id")
    )
    @Column(name = "links", columnDefinition = "LONGTEXT")
    private List<String> images;

    @Column(name = "status")
    private int status;


}