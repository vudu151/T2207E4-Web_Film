package org.example.film.models.entities;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import lombok.*;
import org.hibernate.annotations.GenericGenerator;

import java.util.List;
import java.util.UUID;

@Entity
@Table(name = "jobs")
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Builder
public class Job {
    @Id
    @GenericGenerator(name="random_id", strategy = "org.example.film.commons.custom.RandomIdGenerator")
    @GeneratedValue(generator = "random_id")    //Dung name="random_id" ben tren de tao
    @Column(name = "id")
    private String id;

    @Column(name = "name")
    private String name;

    @Column(name = "slug")
    private String slug;

    //ManyToMany: Job-Celebrity
    @JsonIgnore
    @ManyToMany(fetch = FetchType.LAZY, cascade = {
            CascadeType.DETACH, CascadeType.MERGE,CascadeType.REMOVE,
            CascadeType.PERSIST, CascadeType.REFRESH
    })
    @JoinTable(
            name = "celebrity_job",
            joinColumns = @JoinColumn(name = "job_id"),
            inverseJoinColumns = @JoinColumn(name = "celebrity_id")
    )
    private List<Celebrity> celebrities;
}
