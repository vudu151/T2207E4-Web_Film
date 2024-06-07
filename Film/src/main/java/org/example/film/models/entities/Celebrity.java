package org.example.film.models.entities;

import jakarta.persistence.*;
import lombok.*;
import org.example.film.models.enums.Country;
import org.hibernate.annotations.GenericGenerator;

import java.time.LocalDate;
import java.util.List;

@Entity
@Table(name = "celebrities")
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Builder
public class Celebrity {
    @Id
    @GenericGenerator(name="random_id", strategy = "org.example.film.commons.custom.RandomIdGenerator")
    @GeneratedValue(generator = "random_id")    //Dung name="random_id" ben tren de tao
    @Column(name = "id")
    private String id;

    @Column(name = "name")
    private String name;

    @Column(name = "birthday")
    private LocalDate birthday;

    @Enumerated(EnumType.STRING)
    @Column(name = "country")
    private Country country;

    @Column(name = "bio", columnDefinition = "TEXT")
    private String bio;

    @Column(name = "poster")
    private String poster;

    @Column(name = "slug")
    private String slug;

    @Column(name = "status")
    private boolean status = true;             //return: true or false # Boolean return true, false, null

    @ElementCollection                          //1 celebrity co nhieu image => Nhung khong can tao Entity rieng cho imgae ma luu tru truc tiep trong Entity Celebrity
    @CollectionTable(name = "celebrity_image",
            joinColumns = @JoinColumn(name = "celebrity_id")
    )
    @Column(name = "images", columnDefinition = "LONGTEXT")
    private List<String> images;

    //ManyToMany: Celebrity-Job
    @ManyToMany(fetch = FetchType.LAZY, cascade = {
            CascadeType.DETACH, CascadeType.MERGE,CascadeType.REMOVE,
            CascadeType.PERSIST, CascadeType.REFRESH
    })
    @JoinTable(
            name = "celebrity_job",
            joinColumns = @JoinColumn(name = "celebrity_id"),
            inverseJoinColumns = @JoinColumn(name = "job_id")
    )
    private List<Job> jobs;
}
