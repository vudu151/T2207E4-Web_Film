package org.example.film.models.entities.procedure;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.*;

import java.util.Date;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class moviesp   {
    @Id
    @Column(name = "id")
    private String id;

    @Column(name = "is_popular")
    private int isPopular;
    @Column(name = "is_series")
    private int isSeries;


    @Column(name = "keywords")
    private String keyWords;
    @Column(name = "level")
    private int level;
    @Column(name = "mmpa_rating")
    private String mmpaRating;
    @Column(name = "name")
    private String name;


    @Column(name = "poster")
    private String poster;

    @Column(name = "release_date")
    private Date release;

    @Column(name = "screening_status")
    private int screeningStatus;
    @Column(name = "status")
    private int status;


    @Column(name = "total_view")
    private int totalView;

    @Column(name = "trailer")
    private String trailer;

    @Column(name = "genremain")
    private String genremain;
    @Column(name = "catename")
    private String catename;


    @Column(name = "total_items")
    private Integer totalitems;

    @Column(name = "total_pages")
    private Integer totalpages;


}
