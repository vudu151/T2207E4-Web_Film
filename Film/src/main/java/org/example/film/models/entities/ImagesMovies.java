//package org.example.film.models.entities;
//
//import com.fasterxml.jackson.annotation.JsonIgnore;
//import jakarta.persistence.*;
//import lombok.*;
//import org.hibernate.annotations.GenericGenerator;
//
//import java.util.List;
//
//@Entity
//@Table(name = "images")
//@Getter
//@Setter
//@AllArgsConstructor
//@NoArgsConstructor
//@Builder
//public class ImagesMovies {
//    @Id
//    @GenericGenerator(name="random_id", strategy = "org.example.film.commons.custom.RandomIdGenerator")
//    @GeneratedValue(generator = "random_id")    //Dung name="random_id" ben tren de tao
//    @Column(name = "id")
//    private String id;
//
//    @Column(name = "link")
//    private String link;
//
//    private int Status;
//
//    @JsonIgnore
//    @ManyToMany(fetch = FetchType.LAZY, cascade = {
//            CascadeType.DETACH, CascadeType.MERGE,
//            CascadeType.PERSIST, CascadeType.REFRESH
//    })
//    @JoinTable(
//            name = "images_movies",
//            joinColumns = @JoinColumn(name = "images_id"),
//            inverseJoinColumns = @JoinColumn(name = "movie_id")
//    )
//    private List<Movies> movies;
//}
