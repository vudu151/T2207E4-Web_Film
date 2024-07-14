package org.example.film.models.entities.procedure;

import jakarta.persistence.*;
import lombok.*;
import org.example.film.models.enums.Country;

import java.time.LocalDate;

@Entity
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Builder
public class cebritiesp {

    @Id
    @Column(name = "id")
    private String id;
    @Column(name = "bio")
    private String bio;


    @Column(name = "birthday")
    private LocalDate birthday;

    @Enumerated(EnumType.STRING)
    @Column(name = "country")
    private Country country;

    @Column(name = "name")
    private String name;

    @Column(name = "poster")
    private String poster;

    @Column(name = "slug")
    private String slug;

    @Column(name = "status")
    private boolean status = true;             //return: true or false # Boolean return true, false, null

    @Column(name = "job_id")
    private String jobid;

    @Column(name = "job")
    private String job;

    @Column(name = "total_items")
    private Integer totalitems;

    @Column(name = "total_pages")
    private Integer totalpages;


}
